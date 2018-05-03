require 'test_helper'

class NikeScraperControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nike_scraper_index_url
    assert_response :success
  end

end
