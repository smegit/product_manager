require 'rails_helper'

RSpec.describe "system_controls/edit", type: :view do
  before(:each) do
    @system_control = assign(:system_control, SystemControl.create!())
  end

  it "renders the edit system_control form" do
    render

    assert_select "form[action=?][method=?]", system_control_path(@system_control), "post" do
    end
  end
end
