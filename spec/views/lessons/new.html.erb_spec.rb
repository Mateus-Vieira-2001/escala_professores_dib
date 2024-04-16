require 'rails_helper'

RSpec.describe "lessons/new", type: :view do
  before(:each) do
    assign(:lesson, Lesson.new(
      :title => "MyString",
      :active => false
    ))
  end

  it "renders new lesson form" do
    render

    assert_select "form[action=?][method=?]", lessons_path, "post" do

      assert_select "input[name=?]", "lesson[title]"

      assert_select "input[name=?]", "lesson[active]"
    end
  end
end
