require 'rails_helper'

RSpec.describe "assistant_registrations/show", type: :view do
  before(:each) do
    @assistant_registration = assign(:assistant_registration, AssistantRegistration.create!(
      :name => "Name",
      :class_by_age => "Class By Age",
      :is_teacher_too => false,
      :disponibility => "Disponibility"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Class By Age/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Disponibility/)
  end
end
