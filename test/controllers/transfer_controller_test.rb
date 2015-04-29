require 'test_helper'

class TransferControllerTest < ActionController::TestCase
  test "should get xml" do
    get :xml
    assert_response :success
  end

  test "should get csv" do
    get :csv
    assert_response :success
  end

end
