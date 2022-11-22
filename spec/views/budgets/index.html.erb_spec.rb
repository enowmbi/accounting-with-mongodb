require 'rails_helper'

RSpec.describe "budgets/index", type: :view do
  before(:each) do
    assign(:budgets, [
      Budget.create!(
        account: nil,
        amount: "9.99",
        currency: "Currency"
      ),
      Budget.create!(
        account: nil,
        amount: "9.99",
        currency: "Currency"
      )
    ])
  end

  it "renders a list of budgets" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Currency".to_s), count: 2
  end
end
