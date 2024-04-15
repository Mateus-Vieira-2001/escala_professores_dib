require 'rails_helper'

RSpec.describe "registrations/edit", type: :view do
  before(:each) do
    @registration = assign(:registration, Registration.create!(
      :name => "MyString",
      :type_volunteer => "MyString"
    ))
  end

  it "renders the edit registration form" do
    render

    assert_select "form[action=?][method=?]", registration_path(@registration), "post" do

      assert_select "input[name=?]", "registration[name]"

      assert_select "input[name=?]", "registration[type_volunteer]"
    end
  end
end
