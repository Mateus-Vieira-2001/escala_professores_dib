require 'rails_helper'

RSpec.describe "schedules/index", type: :view do
  before(:each) do
    assign(:schedules, [
      Schedule.create!(
        :teacher => "Teacher",
        :assistant => "Assistant",
        :leader => "Leader",
        :class_by_age => "Class By Age",
        :lesson => "Lesson",
        :period => "Period",
        :active => false
      ),
      Schedule.create!(
        :teacher => "Teacher",
        :assistant => "Assistant",
        :leader => "Leader",
        :class_by_age => "Class By Age",
        :lesson => "Lesson",
        :period => "Period",
        :active => false
      )
    ])
  end

  it "renders a list of schedules" do
    render
    assert_select "tr>td", :text => "Teacher".to_s, :count => 2
    assert_select "tr>td", :text => "Assistant".to_s, :count => 2
    assert_select "tr>td", :text => "Leader".to_s, :count => 2
    assert_select "tr>td", :text => "Class By Age".to_s, :count => 2
    assert_select "tr>td", :text => "Lesson".to_s, :count => 2
    assert_select "tr>td", :text => "Period".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
