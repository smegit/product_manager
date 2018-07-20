require 'rails_helper'

RSpec.describe "approvals/edit", type: :view do
  before(:each) do
    @approval = assign(:approval, Approval.create!())
  end

  it "renders the edit approval form" do
    render

    assert_select "form[action=?][method=?]", approval_path(@approval), "post" do
    end
  end
end
