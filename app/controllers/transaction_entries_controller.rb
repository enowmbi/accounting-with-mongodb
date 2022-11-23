class TransactionEntriesController < ApplicationController
  def create
    @transaction = Transaction.find(params[:id])
    @transaction.transaction_entries.build(transaction_entry_params)
    respond_to do |format|
      if @transaction.save
        format.turbo_stream do
          render turbo_stream: [
            turbo_stream.update("new-transaction-entry-form", partial: "transaction_entries/form", locals: { transaction_entry: TransactionEntry.new }),
            turbo_stream.prepend("transaction_entries", partial: "transaction_entries/transaction_entry", locals: { transaction_entry: @transaction.transaction_entries.last }),
            turbo_stream.update("notice", html: "Transaction Entry was successfully")
          ]
        end
      else
        format.turbo_stream do
          render turbo_stream: [
            turbo_stream.update("new-transaction-entry-form", partial: "transaction_entries/form", locals: { transaction_entry: @transaction_entry }),
            turbo_stream.update("alert", html: @transaction_entry.errors.full_messages)
          ]
        end
      end
    end
  end

  def update; end

  def destroy; end

  private

  def transaction_entry_params
    account_name = Account.find(params[:transaction_entry][:account_id])&.name
    params[:transaction_entry].merge!(account_name: account_name)
    params.require(:transaction_entry).permit(:account_id, :account_name, :entry_type, :amount, :memo)
  end
end
