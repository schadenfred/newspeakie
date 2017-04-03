# require "test_helper"

# class CreateNewQuackTest < Capybara::Rails::TestCase

#   describe "create new quack" do

#     Given(:whistle) {
#       FactoryGirl.create(:whistle) }

#     Given {
#       visit whistle_path(whistle)

#       fill_in("quack_content", with: "blah")
#       click_button "Create Quack"

#     }
#     Then { }
#       # assert_content page, "New Whistle" }

#     # Then { save_and_open_page }
#     # Given { find(:href, duckspeak_path(duckspeak)).click }

#     # Given { click_link "New Duckspeak" }
#     #   Given {
#     #     fill_in "Name", with: "mallard"
#     #     fill_in "Description", with: "language of the mallards"
#     #     fill_in "Tagline", with: "Once you go mallard, you'll never read J.G. Ballard"
#     #     click_button "Create Duckspeak"
#     #   }

#     #   Then { assert_content page, "Duckspeak was successfully created" }
#   end
# end