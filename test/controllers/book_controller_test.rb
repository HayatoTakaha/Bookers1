require "test_helper"

class BookControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get book_post_url
    assert_response :success
  end
end
