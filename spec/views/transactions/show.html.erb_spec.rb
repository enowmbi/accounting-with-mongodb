require 'rails_helper'

RSpec.describe "transactions/show", type: :view do
  before(:each) do
    assign(:transaction, Transaction.create!(
      memo: "Memo",
      ref: "Ref",
      balanced: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Memo/)
    expect(rendered).to match(/Ref/)
    expect(rendered).to match(/false/)
  end
end
