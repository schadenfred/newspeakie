require "test_helper"

class HomepageRouteTest < ActionDispatch::IntegrationTest
  def test_homepage
    assert_routing "/", :controller => "home", :action => "index"
  end
end