require 'rails_helper'

RSpec.describe "functions/edit", type: :view do
  before(:each) do
    @function = assign(:function, Function.create!(
      :control_type => "MyString",
      :product_type => "MyString",
      :function_code => "MyString",
      :descritpion => "MyString"
    ))
  end

  it "renders the edit function form" do
    render

    assert_select "form[action=?][method=?]", function_path(@function), "post" do

      assert_select "input#function_control_type[name=?]", "function[control_type]"

      assert_select "input#function_product_type[name=?]", "function[product_type]"

      assert_select "input#function_function_code[name=?]", "function[function_code]"

      assert_select "input#function_descritpion[name=?]", "function[descritpion]"
    end
  end
end
