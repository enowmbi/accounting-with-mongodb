require 'rails_helper'

RSpec.describe "accounts/show", type: :view do
  before(:each) do
    assign(:account, Account.create!(
      name: "Name",
      code: "Code",
      description: "Description",
      starting_balance: "9.99",
      currency: "Currency"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Currency/)
  end
end
