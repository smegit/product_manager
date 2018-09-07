require 'rails_helper'

RSpec.describe "selection_controls/edit", type: :view do
  before(:each) do
    @selection_control = assign(:selection_control, SelectionControl.create!(
      :name => "MyString",
      :value => "MyString",
      :code => "MyString",
      :label => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit selection_control form" do
    render

    assert_select "form[action=?][method=?]", selection_control_path(@selection_control), "post" do

      assert_select "input#selection_control_name[name=?]", "selection_control[name]"

      assert_select "input#selection_control_value[name=?]", "selection_control[value]"

      assert_select "input#selection_control_code[name=?]", "selection_control[code]"

      assert_select "input#selection_control_label[name=?]", "selection_control[label]"

      assert_select "textarea#selection_control_description[name=?]", "selection_control[description]"
    end
  end
end
