feature 'confirmation message of attack' do
  scenario 'P1 attacks P2' do
    sign_in_and_play
    (click_button('Attack'))
    expect(page).to have_content 'has attacked'
  end
end
feature 'expect attack to reduce P2 HP by 10' do
  scenario 'P1 attacks P2 and deals 10 damage' do
    sign_in_and_play
    (click_button('Attack'))
    expect(page).to have_content 'P2 10HP'
  end
end
feature 'expect attack to reduce P1 HP by 10' do
  scenario 'P2 attacks P1 and deals 10 damage' do
    sign_in_and_play
    (click_button('Attack'))
    (click_button('Continue'))
    (click_button('Attack'))
    expect(page).to have_content 'P1 10HP'
  end
end