require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  describe 'GET /categories' do
    it 'redirects to sign-in if user is not logged in' do
      get categories_path
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
