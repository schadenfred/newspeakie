require "test_helper"

class CreateNewMethodTest < Capybara::Rails::TestCase

  describe "create new language" do

    Given(:duckspeak) { FactoryGirl.create(:duckspeak) }
    Given(:attrs) { FactoryGirl.attributes_for(:whistle) }

    Given {
      visit duckspeak_path(duckspeak)
      click_link "New Whistle"
      fill_in "Singular name", with: attrs[:singular_name]
      click_button "Create Whistle"
    }
    Then { assert_content page, "New Whistle" }
    And { Whistle.last.singular_name.must_equal attrs[:singular_name] }
  end
end