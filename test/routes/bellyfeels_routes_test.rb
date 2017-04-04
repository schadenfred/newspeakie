require "test_helper"

class HomepageRouteTest < ActionDispatch::IntegrationTest

  def test_protected_routing
    assert_routing "/duckspeaks/1", :controller => "duckspeaks", :action => "show", id: "1"
  end

  def test_glob_routing_with_method
    assert_routing "/lorem/sentence", :controller => "bellyfeels", :action => "idea", duckspeak: "lorem", whistle: "sentence"
  end

  def test_glob_routing_with_method_and_args
    assert_routing "/lorem/sentence/5", :controller => "bellyfeels", :action => "idea", duckspeak: "lorem", whistle: "sentence", args: "5"
  end
end