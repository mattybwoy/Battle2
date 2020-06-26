feature "confirmation of opponent attack" do
  scenario "confirmation of P2 attack" do
    sign_in_and_play
    (click_button('Attack'))
    (click_button('Continue'))
    (click_button('Attack'))
    expect(page).to have_content 'Vegeta has attacked Goku'
  end
end