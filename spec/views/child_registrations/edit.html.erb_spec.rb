require 'rails_helper'

RSpec.describe "child_registrations/edit", type: :view do
  before(:each) do
    @child_registration = assign(:child_registration, ChildRegistration.create!(
      :name => "MyString",
      :guardian => "MyString",
      :disease => "MyString",
      :observation => "MyString"
    ))
  end

  it "renders the edit child_registration form" do
    render

    assert_select "form[action=?][method=?]", child_registration_path(@child_registration), "post" do

      assert_select "input[name=?]", "child_registration[name]"

      assert_select "input[name=?]", "child_registration[guardian]"

      assert_select "input[name=?]", "child_registration[disease]"

      assert_select "input[name=?]", "child_registration[observation]"
    end
  end
end
