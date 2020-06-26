feature "you lose " do
  scenario "Where player 2 loses" do
    sign_in_and_play
    (click_button('Attack'))
    (click_button('Continue'))
    (click_button('Attack'))
    (click_button('Continue'))
    (click_button('Attack'))
    (click_button('Continue'))
    expect(page).to have_content "P2 Loses"
  end
end