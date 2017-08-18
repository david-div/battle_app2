feature 'Attacking' do

  scenario 'Player 1 attacks player 2 and gets confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Freddie attacks David'
  end
end
