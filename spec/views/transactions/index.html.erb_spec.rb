require 'rails_helper'

RSpec.describe "transactions/index", type: :view do
  before(:each) do
    assign(:transactions, [
      Transaction.create!(
        memo: "Memo",
        ref: "Ref",
        balanced: false
      ),
      Transaction.create!(
        memo: "Memo",
        ref: "Ref",
        balanced: false
      )
    ])
  end

  it "renders a list of transactions" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Memo".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Ref".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
  end
end
