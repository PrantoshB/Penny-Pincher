require 'rails_helper'

RSpec.describe 'Users', type: :feature do
  scenario 'show home page' do
    visit root_path
    assert page.has_content?('PennyPincher')
  end

  scenario 'user can sign up' do
    visit new_user_registration_path
    fill_in('Full Name', with: 'Prantosh')
    fill_in('Email', with: 'pbiswas@gmail.com')
    fill_in('Password', with: 'Password')
    fill_in('Confirm Password', with: 'Password')
    click_button 'Next'
    expect(page).to have_content 'CATEGORIES'
  end

  scenario 'show sign-in page' do
    User.create(name: 'Prantosh', email: 'pbiswas@gmail.com', password: 'Password')
    visit new_user_session_path
    fill_in('Email', with: 'pbiswas@gmail.com')
    fill_in('Password', with: 'Password')
    click_button 'Log In'
    expect(page).to have_content 'CATEGORIES'
  end
end