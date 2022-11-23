require 'rails_helper'

RSpec.describe "transactions/edit", type: :view do
  let(:transaction) {
    Transaction.create!(
      memo: "MyString",
      ref: "MyString",
      balanced: false
    )
  }

  before(:each) do
    assign(:transaction, transaction)
  end

  it "renders the edit transaction form" do
    render

    assert_select "form[action=?][method=?]", transaction_path(transaction), "post" do

      assert_select "input[name=?]", "transaction[memo]"

      assert_select "input[name=?]", "transaction[ref]"

      assert_select "input[name=?]", "transaction[balanced]"
    end
  end
end
