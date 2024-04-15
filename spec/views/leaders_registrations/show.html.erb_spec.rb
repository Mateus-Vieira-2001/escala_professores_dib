require 'rails_helper'

RSpec.describe "leaders_registrations/show", type: :view do
  before(:each) do
    @leaders_registration = assign(:leaders_registration, LeadersRegistration.create!(
      :name => "Name",
      :disponibility => "Disponibility",
      :is_teacher_too => false,
      :is_assistant_too => false,
      :class_by_age => "Class By Age"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Disponibility/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Class By Age/)
  end
end
