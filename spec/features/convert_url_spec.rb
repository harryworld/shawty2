require 'rails_helper'

feature 'visit my first page' do
  scenario 'vist home page' do
    visit '/'
    within('#link') do
      fill_in 'original', :with => 'http://www.google.com/'
      click_button 'Submit'
    end
    expect(current_path).to eq '/url'
  end
end