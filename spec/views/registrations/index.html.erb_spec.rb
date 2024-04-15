require 'rails_helper'

RSpec.describe "registrations/index", type: :view do
  before(:each) do
    assign(:registrations, [
      Registration.create!(
        :name => "Name",
        :type_volunteer => "Type Volunteer"
      ),
      Registration.create!(
        :name => "Name",
        :type_volunteer => "Type Volunteer"
      )
    ])
  end

  it "renders a list of registrations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type Volunteer".to_s, :count => 2
  end
end
