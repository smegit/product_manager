require 'rails_helper'

RSpec.describe "functions/index", type: :view do
  before(:each) do
    assign(:functions, [
      Function.create!(
        :control_type => "Control Type",
        :product_type => "Product Type",
        :function_code => "Function Code",
        :descritpion => "Descritpion"
      ),
      Function.create!(
        :control_type => "Control Type",
        :product_type => "Product Type",
        :function_code => "Function Code",
        :descritpion => "Descritpion"
      )
    ])
  end

  it "renders a list of functions" do
    render
    assert_select "tr>td", :text => "Control Type".to_s, :count => 2
    assert_select "tr>td", :text => "Product Type".to_s, :count => 2
    assert_select "tr>td", :text => "Function Code".to_s, :count => 2
    assert_select "tr>td", :text => "Descritpion".to_s, :count => 2
  end
end
