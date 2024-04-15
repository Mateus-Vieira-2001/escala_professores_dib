require 'rails_helper'

RSpec.describe "leaders_registrations/new", type: :view do
  before(:each) do
    assign(:leaders_registration, LeadersRegistration.new(
      :name => "MyString",
      :disponibility => "MyString",
      :is_teacher_too => false,
      :is_assistant_too => false,
      :class_by_age => "MyString"
    ))
  end

  it "renders new leaders_registration form" do
    render

    assert_select "form[action=?][method=?]", leaders_registrations_path, "post" do

      assert_select "input[name=?]", "leaders_registration[name]"

      assert_select "input[name=?]", "leaders_registration[disponibility]"

      assert_select "input[name=?]", "leaders_registration[is_teacher_too]"

      assert_select "input[name=?]", "leaders_registration[is_assistant_too]"

      assert_select "input[name=?]", "leaders_registration[class_by_age]"
    end
  end
end
