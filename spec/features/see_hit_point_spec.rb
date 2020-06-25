feature "see hp points" do
  scenario "A user starts the game and can see player 2's hp points" do
    sign_in_and_play
    expect(page).to have_content "P2 #{Player::HIT_POINT}HP"
  end
end