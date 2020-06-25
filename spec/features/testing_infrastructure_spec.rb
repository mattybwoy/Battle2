# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'expecting the filled out form to display on screen' do
  scenario 'A user enters their name into the specified fields' do
    visit('/')
    fill_in "player_one_name", :with => "Goku"
    fill_in "player_two_name", :with => "Vegeta"
    click_button "submit"
    expect(page).to have_content 'P1 Goku vs P2 Vegeta'
  end
end
