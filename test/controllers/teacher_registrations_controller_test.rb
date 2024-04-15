require "test_helper"

class TeacherRegistrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher_registration = teacher_registrations(:one)
  end

  test "should get index" do
    get teacher_registrations_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_registration_url
    assert_response :success
  end

  test "should create teacher_registration" do
    assert_difference("TeacherRegistration.count") do
      post teacher_registrations_url, params: { teacher_registration: { class_by_age: @teacher_registration.class_by_age, disponibility: @teacher_registration.disponibility, email: @teacher_registration.email, is_assistant_too: @teacher_registration.is_assistant_too, name: @teacher_registration.name } }
    end

    assert_redirected_to teacher_registration_url(TeacherRegistration.last)
  end

  test "should show teacher_registration" do
    get teacher_registration_url(@teacher_registration)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_registration_url(@teacher_registration)
    assert_response :success
  end

  test "should update teacher_registration" do
    patch teacher_registration_url(@teacher_registration), params: { teacher_registration: { class_by_age: @teacher_registration.class_by_age, disponibility: @teacher_registration.disponibility, email: @teacher_registration.email, is_assistant_too: @teacher_registration.is_assistant_too, name: @teacher_registration.name } }
    assert_redirected_to teacher_registration_url(@teacher_registration)
  end

  test "should destroy teacher_registration" do
    assert_difference("TeacherRegistration.count", -1) do
      delete teacher_registration_url(@teacher_registration)
    end

    assert_redirected_to teacher_registrations_url
  end
end
