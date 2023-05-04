require 'rails_helper'

RSpec.describe 'Category', type: :feature do
  before(:each) do
    User.create(name: 'Prantosh', email: 'contact@prantalks.com', password: 'Password')
    visit new_user_session_path
    fill_in('Email', with: 'contact@prantalks.com')
    fill_in('Password', with: 'Password')
    click_button 'Log In'
  end

  scenario 'show categories page' do
    sleep(1)
    visit categories_path
    assert page.has_content?('CATEGORIES')
  end

  scenario 'create new category' do
    sleep(1)
    visit new_category_path
    fill_in('Name', with: 'Food')
    fill_in('Icon Link', with: 'demo_icon')

    click_button 'Create'
    assert page.has_content?('NEW TRANSACTION')
  end
end
