require 'rails_helper'

RSpec.describe "system_controls/new", type: :view do
  before(:each) do
    assign(:system_control, SystemControl.new())
  end

  it "renders new system_control form" do
    render

    assert_select "form[action=?][method=?]", system_controls_path, "post" do
    end
  end
end
