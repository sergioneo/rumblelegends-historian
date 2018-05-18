require 'test_helper'

class LoggerControllerTest < ActionDispatch::IntegrationTest
  test "should get log" do
    get logger_log_url
    assert_response :success
  end

  test "should get logs_by_wp_id" do
    get logger_logs_by_wp_id_url
    assert_response :success
  end

  test "should get logs_by_address" do
    get logger_logs_by_address_url
    assert_response :success
  end

end
