require "application_system_test_case"

class TeacherRegistrationsTest < ApplicationSystemTestCase
  setup do
    @teacher_registration = teacher_registrations(:one)
  end

  test "visiting the index" do
    visit teacher_registrations_url
    assert_selector "h1", text: "Teacher registrations"
  end

  test "should create teacher registration" do
    visit teacher_registrations_url
    click_on "New teacher registration"

    fill_in "Class by age", with: @teacher_registration.class_by_age
    fill_in "Disponibility", with: @teacher_registration.disponibility
    fill_in "Email", with: @teacher_registration.email
    check "Is assistant too" if @teacher_registration.is_assistant_too
    fill_in "Name", with: @teacher_registration.name
    click_on "Create Teacher registration"

    assert_text "Teacher registration was successfully created"
    click_on "Back"
  end

  test "should update Teacher registration" do
    visit teacher_registration_url(@teacher_registration)
    click_on "Edit this teacher registration", match: :first

    fill_in "Class by age", with: @teacher_registration.class_by_age
    fill_in "Disponibility", with: @teacher_registration.disponibility
    fill_in "Email", with: @teacher_registration.email
    check "Is assistant too" if @teacher_registration.is_assistant_too
    fill_in "Name", with: @teacher_registration.name
    click_on "Update Teacher registration"

    assert_text "Teacher registration was successfully updated"
    click_on "Back"
  end

  test "should destroy Teacher registration" do
    visit teacher_registration_url(@teacher_registration)
    click_on "Destroy this teacher registration", match: :first

    assert_text "Teacher registration was successfully destroyed"
  end
end
