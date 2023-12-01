require "test_helper"

class StimulusControllerTest < ActionDispatch::IntegrationTest
  test "should get navbar" do
    get stimulus_navbar_url
    assert_response :success
  end
end
