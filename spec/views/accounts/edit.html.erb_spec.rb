require 'rails_helper'

RSpec.describe "accounts/edit", type: :view do
  let(:account) {
    Account.create!(
      name: "MyString",
      code: "MyString",
      description: "MyString",
      starting_balance: "9.99",
      currency: "MyString"
    )
  }

  before(:each) do
    assign(:account, account)
  end

  it "renders the edit account form" do
    render

    assert_select "form[action=?][method=?]", account_path(account), "post" do

      assert_select "input[name=?]", "account[name]"

      assert_select "input[name=?]", "account[code]"

      assert_select "input[name=?]", "account[description]"

      assert_select "input[name=?]", "account[starting_balance]"

      assert_select "input[name=?]", "account[currency]"
    end
  end
end
