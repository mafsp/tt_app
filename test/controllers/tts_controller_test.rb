require 'test_helper'

class TtsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tts_index_url
    assert_response :success
  end

end
