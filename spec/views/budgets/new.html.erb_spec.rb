require 'rails_helper'

RSpec.describe "budgets/new", type: :view do
  before(:each) do
    assign(:budget, Budget.new(
      account: nil,
      amount: "9.99",
      currency: "MyString"
    ))
  end

  it "renders new budget form" do
    render

    assert_select "form[action=?][method=?]", budgets_path, "post" do

      assert_select "input[name=?]", "budget[account_id]"

      assert_select "input[name=?]", "budget[amount]"

      assert_select "input[name=?]", "budget[currency]"
    end
  end
end
