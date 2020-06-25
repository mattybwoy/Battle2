
feature 'expecting the filled out form to display on screen' do
  scenario 'A user enters their name into the specified fields' do
      sign_in_and_play
    expect(page).to have_content 'P1 Goku vs P2 Vegeta'
  end
end
