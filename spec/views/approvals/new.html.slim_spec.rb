require 'rails_helper'

RSpec.describe "approvals/new", type: :view do
  before(:each) do
    assign(:approval, Approval.new())
  end

  it "renders new approval form" do
    render

    assert_select "form[action=?][method=?]", approvals_path, "post" do
    end
  end
end
