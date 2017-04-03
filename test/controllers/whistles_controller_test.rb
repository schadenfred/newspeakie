require "test_helper"

describe WhistlesController do

  Given(:duckspeak) { FactoryGirl.create(:duckspeak) }
  Given(:whistle) { FactoryGirl.create(:whistle, duckspeak_id: duckspeak.id) }
  Given(:quack) { FactoryGirl.attributes_for(:quack) }

  describe "#index" do

    Given { get duckspeak_whistles_path(duckspeak) }
    Then { value(response).must_be :success?}


  end
  # let(:whistle) { whistles :one }

  # it "gets index" do
  #   get whistles_url
  #   value(response).must_be :success?
  # end

  # it "gets new" do
  #   get new_whistle_url
  #   value(response).must_be :success?
  # end

  # it "creates whistle" do
  #   expect {
  #     post whistles_url, params: { whistle: { plural_name: whistle.plural_name, singular_name: whistle.singular_name, whistle_type: whistle.whistle_type } }
  #   }.must_change "Whistle.count"

  #   must_redirect_to whistle_path(Whistle.last)
  # end

  # it "shows whistle" do
  #   get whistle_url(whistle)
  #   value(response).must_be :success?
  # end

  # it "gets edit" do
  #   get edit_whistle_url(whistle)
  #   value(response).must_be :success?
  # end

  # it "updates whistle" do
  #   patch whistle_url(whistle), params: { whistle: { plural_name: whistle.plural_name, singular_name: whistle.singular_name, whistle_type: whistle.whistle_type } }
  #   must_redirect_to whistle_path(whistle)
  # end

  # it "destroys whistle" do
  #   expect {
  #     delete whistle_url(whistle)
  #   }.must_change "Whistle.count", -1

  #   must_redirect_to whistles_path
  # end
end
