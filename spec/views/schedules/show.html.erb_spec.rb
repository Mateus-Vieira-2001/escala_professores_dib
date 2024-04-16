require 'rails_helper'

RSpec.describe "schedules/show", type: :view do
  before(:each) do
    @schedule = assign(:schedule, Schedule.create!(
      :teacher => "Teacher",
      :assistant => "Assistant",
      :leader => "Leader",
      :class_by_age => "Class By Age",
      :lesson => "Lesson",
      :period => "Period",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Teacher/)
    expect(rendered).to match(/Assistant/)
    expect(rendered).to match(/Leader/)
    expect(rendered).to match(/Class By Age/)
    expect(rendered).to match(/Lesson/)
    expect(rendered).to match(/Period/)
    expect(rendered).to match(/false/)
  end
end
