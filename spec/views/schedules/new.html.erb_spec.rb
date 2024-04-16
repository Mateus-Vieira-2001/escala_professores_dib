require 'rails_helper'

RSpec.describe "schedules/new", type: :view do
  before(:each) do
    assign(:schedule, Schedule.new(
      :teacher => "MyString",
      :assistant => "MyString",
      :leader => "MyString",
      :class_by_age => "MyString",
      :lesson => "MyString",
      :period => "MyString",
      :active => false
    ))
  end

  it "renders new schedule form" do
    render

    assert_select "form[action=?][method=?]", schedules_path, "post" do

      assert_select "input[name=?]", "schedule[teacher]"

      assert_select "input[name=?]", "schedule[assistant]"

      assert_select "input[name=?]", "schedule[leader]"

      assert_select "input[name=?]", "schedule[class_by_age]"

      assert_select "input[name=?]", "schedule[lesson]"

      assert_select "input[name=?]", "schedule[period]"

      assert_select "input[name=?]", "schedule[active]"
    end
  end
end
