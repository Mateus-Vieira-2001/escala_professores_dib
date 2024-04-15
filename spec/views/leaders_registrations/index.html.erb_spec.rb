require 'rails_helper'

RSpec.describe "leaders_registrations/index", type: :view do
  before(:each) do
    assign(:leaders_registrations, [
      LeadersRegistration.create!(
        :name => "Name",
        :disponibility => "Disponibility",
        :is_teacher_too => false,
        :is_assistant_too => false,
        :class_by_age => "Class By Age"
      ),
      LeadersRegistration.create!(
        :name => "Name",
        :disponibility => "Disponibility",
        :is_teacher_too => false,
        :is_assistant_too => false,
        :class_by_age => "Class By Age"
      )
    ])
  end

  it "renders a list of leaders_registrations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Disponibility".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Class By Age".to_s, :count => 2
  end
end
