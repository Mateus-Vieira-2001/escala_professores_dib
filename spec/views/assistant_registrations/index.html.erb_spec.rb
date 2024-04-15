require 'rails_helper'

RSpec.describe "assistant_registrations/index", type: :view do
  before(:each) do
    assign(:assistant_registrations, [
      AssistantRegistration.create!(
        :name => "Name",
        :class_by_age => "Class By Age",
        :is_teacher_too => false,
        :disponibility => "Disponibility"
      ),
      AssistantRegistration.create!(
        :name => "Name",
        :class_by_age => "Class By Age",
        :is_teacher_too => false,
        :disponibility => "Disponibility"
      )
    ])
  end

  it "renders a list of assistant_registrations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Class By Age".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Disponibility".to_s, :count => 2
  end
end
