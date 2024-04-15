require 'rails_helper'

RSpec.describe "registrations/new", type: :view do
  before(:each) do
    assign(:registration, Registration.new(
      :name => "MyString",
      :type_volunteer => "MyString"
    ))
  end

  it "renders new registration form" do
    render

    assert_select "form[action=?][method=?]", registrations_path, "post" do

      assert_select "input[name=?]", "registration[name]"

      assert_select "input[name=?]", "registration[type_volunteer]"
    end
  end
end
