require "test_helper"

describe DuckspeaksController do

  Given(:duckspeak) { FactoryGirl.create(:duckspeak) }

  describe "#index" do

    Given { get duckspeaks_url }
    Then { value(response).must_be :success? }
  end

  # it "gets new" do
  #   get new_duckspeak_url
  #   value(response).must_be :success?
  # end

  # it "creates duckspeak" do
  #   expect {
  #     post duckspeaks_url, params: { duckspeak: { description: duckspeak.description, name: duckspeak.name, tagline: duckspeak.tagline } }
  #   }.must_change "Duckspeak.count"

  #   must_redirect_to duckspeak_path(Duckspeak.last)
  # end

  # it "shows duckspeak" do
  #   get duckspeak_url(duckspeak)
  #   value(response).must_be :success?
  # end

  # it "gets edit" do
  #   get edit_duckspeak_url(duckspeak)
  #   value(response).must_be :success?
  # end

  # it "updates duckspeak" do
  #   patch duckspeak_url(duckspeak), params: { duckspeak: { description: duckspeak.description, name: duckspeak.name, tagline: duckspeak.tagline } }
  #   must_redirect_to duckspeak_path(duckspeak)
  # end

  # it "destroys duckspeak" do
  #   expect {
  #     delete duckspeak_url(duckspeak)
  #   }.must_change "Duckspeak.count", -1

  #   must_redirect_to duckspeaks_path
  # end
end
