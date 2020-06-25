def sign_in_and_play
    visit('/')
    fill_in "player_one_name", :with => "Goku"
    fill_in "player_two_name", :with => "Vegeta"
    click_button "submit"
end