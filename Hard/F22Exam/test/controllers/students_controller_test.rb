require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get signup" do
    get students_signup_url
    assert_response :success
  end

end
