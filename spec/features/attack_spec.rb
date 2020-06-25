feature 'expect attack to reduce P2 HP by 10' do
  scenario 'P1 attacks P2 and deals 10 damage' do
    sign_in_and_play
    (click_button('Attack'))
    expect(page).to have_content 'You have attacked'
  end
end