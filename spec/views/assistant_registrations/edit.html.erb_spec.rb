require 'rails_helper'

RSpec.describe "assistant_registrations/edit", type: :view do
  before(:each) do
    @assistant_registration = assign(:assistant_registration, AssistantRegistration.create!(
      :name => "MyString",
      :class_by_age => "MyString",
      :is_teacher_too => false,
      :disponibility => "MyString"
    ))
  end

  it "renders the edit assistant_registration form" do
    render

    assert_select "form[action=?][method=?]", assistant_registration_path(@assistant_registration), "post" do

      assert_select "input[name=?]", "assistant_registration[name]"

      assert_select "input[name=?]", "assistant_registration[class_by_age]"

      assert_select "input[name=?]", "assistant_registration[is_teacher_too]"

      assert_select "input[name=?]", "assistant_registration[disponibility]"
    end
  end
end
