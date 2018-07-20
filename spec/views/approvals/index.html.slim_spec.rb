require 'rails_helper'

RSpec.describe "approvals/index", type: :view do
  before(:each) do
    assign(:approvals, [
      Approval.create!(),
      Approval.create!()
    ])
  end

  it "renders a list of approvals" do
    render
  end
end
