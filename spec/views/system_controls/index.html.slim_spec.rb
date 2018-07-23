require 'rails_helper'

RSpec.describe "system_controls/index", type: :view do
  before(:each) do
    assign(:system_controls, [
      SystemControl.create!(),
      SystemControl.create!()
    ])
  end

  it "renders a list of system_controls" do
    render
  end
end
