require "test_helper"

feature "create quacks" do

  scenario "has content", js: true do
    visit "/"
    click_link "New Duckspeak"
    fill_in "Name", with: "lorem"
    click_button "Create Duckspeak"
    click_link "New Whistle"
    fill_in "Singular name", with: "celebroty"
    click_button "Create Whistle"
    click_link "Show"
    fill_in "quack_content", with: "Brick Brodulik"
    click_button "Create Quack"
    Quack.last.content.must_equal "Brick Brodulik"
  end
end
