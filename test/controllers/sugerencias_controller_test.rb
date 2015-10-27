require 'test_helper'

class SugerenciasControllerTest < ActionController::TestCase
  test "should get sugerencias" do
    get :sugerencias
    assert_response :success
  end

end
