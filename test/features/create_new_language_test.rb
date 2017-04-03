require "test_helper"

class CreateNewLanguageTest < Capybara::Rails::TestCase

  feature "create new language" do

    Given(:duckspeak) { FactoryGirl.attributes_for(:duckspeak) }

    Given {
      visit root_path
      click_link "New Duckspeak"
      fill_in "Name", with: duckspeak[:name]
      fill_in "Description", with: duckspeak[:description]
      fill_in "Tagline", with: duckspeak[:tagline]
      click_button "Create Duckspeak" }

    Then { assert_content page, "Duckspeak was successfully created" }
  end
end
