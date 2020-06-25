feature "see hp points" do
  scenario "A user starts the game and can see player 2's hp points" do
    visit('/')
    fill_in "player_one_name", :with => "Goku"
    fill_in "player_two_name", :with => "Vegeta"
    click_button "submit"
    expect(page).to have_content "P2 #{Battle::HIT_POINT}HP"
  end
end