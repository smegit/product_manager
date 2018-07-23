require 'rails_helper'

RSpec.describe "functions/new", type: :view do
  before(:each) do
    assign(:function, Function.new(
      :control_type => "MyString",
      :product_type => "MyString",
      :function_code => "MyString",
      :descritpion => "MyString"
    ))
  end

  it "renders new function form" do
    render

    assert_select "form[action=?][method=?]", functions_path, "post" do

      assert_select "input#function_control_type[name=?]", "function[control_type]"

      assert_select "input#function_product_type[name=?]", "function[product_type]"

      assert_select "input#function_function_code[name=?]", "function[function_code]"

      assert_select "input#function_descritpion[name=?]", "function[descritpion]"
    end
  end
end
