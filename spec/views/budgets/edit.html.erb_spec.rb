require 'rails_helper'

RSpec.describe "budgets/edit", type: :view do
  let(:budget) {
    Budget.create!(
      account: nil,
      amount: "9.99",
      currency: "MyString"
    )
  }

  before(:each) do
    assign(:budget, budget)
  end

  it "renders the edit budget form" do
    render

    assert_select "form[action=?][method=?]", budget_path(budget), "post" do

      assert_select "input[name=?]", "budget[account_id]"

      assert_select "input[name=?]", "budget[amount]"

      assert_select "input[name=?]", "budget[currency]"
    end
  end
end
