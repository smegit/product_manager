require 'rails_helper'

RSpec.describe "system_controls/show", type: :view do
  before(:each) do
    @system_control = assign(:system_control, SystemControl.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
