require 'rails_helper'

RSpec.describe "transactions/new", type: :view do
  before(:each) do
    assign(:transaction, Transaction.new(
      memo: "MyString",
      ref: "MyString",
      balanced: false
    ))
  end

  it "renders new transaction form" do
    render

    assert_select "form[action=?][method=?]", transactions_path, "post" do

      assert_select "input[name=?]", "transaction[memo]"

      assert_select "input[name=?]", "transaction[ref]"

      assert_select "input[name=?]", "transaction[balanced]"
    end
  end
end
