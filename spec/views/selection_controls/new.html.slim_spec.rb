require 'rails_helper'

RSpec.describe "selection_controls/new", type: :view do
  before(:each) do
    assign(:selection_control, SelectionControl.new(
      :name => "MyString",
      :value => "MyString",
      :code => "MyString",
      :label => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new selection_control form" do
    render

    assert_select "form[action=?][method=?]", selection_controls_path, "post" do

      assert_select "input#selection_control_name[name=?]", "selection_control[name]"

      assert_select "input#selection_control_value[name=?]", "selection_control[value]"

      assert_select "input#selection_control_code[name=?]", "selection_control[code]"

      assert_select "input#selection_control_label[name=?]", "selection_control[label]"

      assert_select "textarea#selection_control_description[name=?]", "selection_control[description]"
    end
  end
end
