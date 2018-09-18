require 'rails_helper'

RSpec.describe "aesthetics/show", type: :view do
  before(:each) do
    @aesthetic = assign(:aesthetic, Aesthetic.create!(
      :control_type => "Control Type",
      :aesthetic_description => "Aesthetic Description",
      :aesthetic_code => "Aesthetic Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Control Type/)
    expect(rendered).to match(/Aesthetic Description/)
    expect(rendered).to match(/Aesthetic Code/)
  end
end
