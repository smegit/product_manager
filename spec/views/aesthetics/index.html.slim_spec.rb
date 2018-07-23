require 'rails_helper'

RSpec.describe "aesthetics/index", type: :view do
  before(:each) do
    assign(:aesthetics, [
      Aesthetic.create!(
        :control_type => "Control Type",
        :aesthetic_description => "Aesthetic Description",
        :aesthetic_code => "Aesthetic Code"
      ),
      Aesthetic.create!(
        :control_type => "Control Type",
        :aesthetic_description => "Aesthetic Description",
        :aesthetic_code => "Aesthetic Code"
      )
    ])
  end

  it "renders a list of aesthetics" do
    render
    assert_select "tr>td", :text => "Control Type".to_s, :count => 2
    assert_select "tr>td", :text => "Aesthetic Description".to_s, :count => 2
    assert_select "tr>td", :text => "Aesthetic Code".to_s, :count => 2
  end
end
