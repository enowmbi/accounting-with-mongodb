require 'rails_helper'

RSpec.describe "budgets/show", type: :view do
  before(:each) do
    assign(:budget, Budget.create!(
      account: nil,
      amount: "9.99",
      currency: "Currency"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Currency/)
  end
end
