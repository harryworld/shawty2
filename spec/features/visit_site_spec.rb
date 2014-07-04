require 'rails_helper'

feature 'visit my first page' do
  scenario 'vist home page' do
    visit '/'
    expect(page).to have_content 'Hello'
  end

  scenario 'have navigation' do
    visit '/'
    expect(page).to have_content 'Shawty2'
  end

  scenario 'have privacy page' do
    visit '/'
    click_link 'Privacy'
    expect(page).to have_content 'Privacy'
  end
end