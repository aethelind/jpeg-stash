require 'rails_helper'
RSpec.describe User, driver: :selenium_chrome, js: true do
describe 'signup process' do
    it 'should successfully create new user' do
      signup
      expect(page).to have_content 'User was successfully created.'
    end

    it 'should fail to create new user' do
      signup
      expect(page).to have_content 'error prohibited this user from being saved'
    end

    it 'should login' do
      login
      expect(page).to have_content 'Logged in!'
    end

    it 'should logout' do
      login
      logout
      expect(page).to have_content 'Logged out!'
    end

    it 'should delete account' do
      delete_account
      expect(page).to have_content 'User was successfully deleted.'
    end

    it 'should not be able to login to deleted account' do
      login
      expect(page).to have_content 'Username or password is invalid.'
    end
  end
end
