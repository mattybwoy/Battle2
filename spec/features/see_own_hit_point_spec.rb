feature "see own hp points" do
  scenario "So I can see how close I am to losing, see own hp" do
    sign_in_and_play
    expect(page).to have_content "P1 #{Player::HIT_POINT}HP"
  end
end