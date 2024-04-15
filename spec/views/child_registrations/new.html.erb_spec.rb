require 'rails_helper'

RSpec.describe "child_registrations/new", type: :view do
  before(:each) do
    assign(:child_registration, ChildRegistration.new(
      :name => "MyString",
      :guardian => "MyString",
      :disease => "MyString",
      :observation => "MyString"
    ))
  end

  it "renders new child_registration form" do
    render

    assert_select "form[action=?][method=?]", child_registrations_path, "post" do

      assert_select "input[name=?]", "child_registration[name]"

      assert_select "input[name=?]", "child_registration[guardian]"

      assert_select "input[name=?]", "child_registration[disease]"

      assert_select "input[name=?]", "child_registration[observation]"
    end
  end
end
