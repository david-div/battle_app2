require 'spec_helper'

feature 'Testing infrastructure' do


  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to battle'
  end


  scenario 'expects players to fill in their names and submit the form' do
    sign_in_and_play
    expect(page).to have_text 'Freddie vs David'
  end

  scenario 'expect session to store names' do
    sign_in_and_play
    assert_current_path('/play')
  end

  scenario 'expects to see player 2\'s hit points' do
    sign_in_and_play
    expect(page).to have_content 'David hp: 100'
  end

end
