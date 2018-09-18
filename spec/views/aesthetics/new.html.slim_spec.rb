require 'rails_helper'

RSpec.describe "aesthetics/new", type: :view do
  before(:each) do
    assign(:aesthetic, Aesthetic.new(
      :control_type => "MyString",
      :aesthetic_description => "MyString",
      :aesthetic_code => "MyString"
    ))
  end

  it "renders new aesthetic form" do
    render

    assert_select "form[action=?][method=?]", aesthetics_path, "post" do

      assert_select "input#aesthetic_control_type[name=?]", "aesthetic[control_type]"

      assert_select "input#aesthetic_aesthetic_description[name=?]", "aesthetic[aesthetic_description]"

      assert_select "input#aesthetic_aesthetic_code[name=?]", "aesthetic[aesthetic_code]"
    end
  end
end
