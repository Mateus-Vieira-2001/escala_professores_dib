require 'rails_helper'

RSpec.describe "child_registrations/index", type: :view do
  before(:each) do
    assign(:child_registrations, [
      ChildRegistration.create!(
        :name => "Name",
        :guardian => "Guardian",
        :disease => "Disease",
        :observation => "Observation"
      ),
      ChildRegistration.create!(
        :name => "Name",
        :guardian => "Guardian",
        :disease => "Disease",
        :observation => "Observation"
      )
    ])
  end

  it "renders a list of child_registrations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Guardian".to_s, :count => 2
    assert_select "tr>td", :text => "Disease".to_s, :count => 2
    assert_select "tr>td", :text => "Observation".to_s, :count => 2
  end
end
