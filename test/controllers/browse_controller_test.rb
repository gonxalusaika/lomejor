require 'test_helper'

class BrowseControllerTest < ActionController::TestCase
  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get acerca_de" do
    get :acerca_de
    assert_response :success
  end

end
