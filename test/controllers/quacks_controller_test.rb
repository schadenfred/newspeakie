require "test_helper"

describe QuacksController do

  Given(:whistle) { FactoryGirl.create(:whistle) }
  Given(:quack) { FactoryGirl.create(:quack) }
  Given(:quack_attrs) { FactoryGirl.attributes_for(:quack) }

  describe "POST :create" do

    Then { expect {
      post quacks_url, params: { quack: {
        content: "Brick Brodulik", whistle_id: whistle.id } }, xhr: true
    }.must_change "Quack.count" }

    And { value(response).must_be :success? }
  end

  describe "DELETE :destroy" do
    Given { quack }

    Then { expect {
      delete quack_path(quack), xhr: true }.must_change "Quack.count", -1 }
  end
end
