require 'rails_helper'

RSpec.describe "functions/show", type: :view do
  before(:each) do
    @function = assign(:function, Function.create!(
      :control_type => "Control Type",
      :product_type => "Product Type",
      :function_code => "Function Code",
      :descritpion => "Descritpion"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Control Type/)
    expect(rendered).to match(/Product Type/)
    expect(rendered).to match(/Function Code/)
    expect(rendered).to match(/Descritpion/)
  end
end
