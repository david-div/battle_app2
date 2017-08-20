feature 'Attacking' do

  scenario 'Player 1 attacks player 2 and gets confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Freddie attacks David'
  end

  scenario "Attacks from player 1 reduce player 2's hp" do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    expect(page).to have_content 'David hp: 90'
  end
end
