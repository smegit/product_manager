require 'rails_helper'

RSpec.describe "selection_controls/index", type: :view do
  before(:each) do
    assign(:selection_controls, [
      SelectionControl.create!(
        :name => "Name",
        :value => "Value",
        :code => "Code",
        :label => "Label",
        :description => "MyText"
      ),
      SelectionControl.create!(
        :name => "Name",
        :value => "Value",
        :code => "Code",
        :label => "Label",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of selection_controls" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Value".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
