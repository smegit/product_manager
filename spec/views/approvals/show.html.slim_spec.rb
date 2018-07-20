require 'rails_helper'

RSpec.describe "approvals/show", type: :view do
  before(:each) do
    @approval = assign(:approval, Approval.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
