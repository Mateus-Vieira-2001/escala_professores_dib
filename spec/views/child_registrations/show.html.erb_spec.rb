require 'rails_helper'

RSpec.describe "child_registrations/show", type: :view do
  before(:each) do
    @child_registration = assign(:child_registration, ChildRegistration.create!(
      :name => "Name",
      :guardian => "Guardian",
      :disease => "Disease",
      :observation => "Observation"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Guardian/)
    expect(rendered).to match(/Disease/)
    expect(rendered).to match(/Observation/)
  end
end
