require 'test_helper'

class FinancialControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get financial_dashboard_url
    assert_response :success
  end

end
