# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'Sign in players' do
  scenario 'player 1 and player 2 enters their names into submission form' do
    visit('/')
    fill_in "Name1", :with => "Player one"
    click_button "Submit"
    expect(page).to have_text("Player one")
  end
end
