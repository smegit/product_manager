require 'rails_helper'

RSpec.describe "selection_controls/show", type: :view do
  before(:each) do
    @selection_control = assign(:selection_control, SelectionControl.create!(
      :name => "Name",
      :value => "Value",
      :code => "Code",
      :label => "Label",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Value/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Label/)
    expect(rendered).to match(/MyText/)
  end
end
