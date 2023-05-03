require 'rails_helper'

RSpec.describe 'Payments', type: :feature do
  before(:all) do
    User.create(name: 'Prantosh', email: 'contact@prantalks.com', password: 'Password')
    visit new_user_session_path
    fill_in('Email', with: 'contact@prantalks.com')
    fill_in('Password', with: 'Password')
    click_button 'Log In'
  end
end