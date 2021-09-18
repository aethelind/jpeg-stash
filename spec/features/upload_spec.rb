require 'rails_helper'
RSpec.describe Image, driver: :selenium_chrome, js: true do
describe 'upload process' do
    before(:all) do
        signup
    end
    before(:each) do
        login
    end

    it 'should not upload large image' do
        visit upload_path
        fill_in 'Title', with: 'Test image'
        attach_file "Image", "./spec/files/big_test_image.jpg"
        click_button 'Upload Image'
        expect(page).to have_content 'error prohibited this image from being saved'
    end
    
    it 'should successfully upload image' do
      visit upload_path
      fill_in 'Title', with: 'Test image'
      attach_file "Image", "./spec/files/test_image.jpg"
      click_button 'Upload Image'
      expect(page).to have_content 'Image was successfully created.'
      expect(page).to have_content '@test-user "Test image"'
      click_link 'Profile'
      expect(page).to have_content '@test-user "Test image"'
    end

    it 'should successfully edit image' do
      visit root_path
      expect(page).to have_content '@test-user "Test image"'
      click_link 'Edit'
      fill_in 'Title', with: 'New title'
      click_button 'Edit Title'
      expect(page).to have_content 'Image was successfully updated.'
      expect(page).to have_content '@test-user "New title"'
    end

    it 'should successfully delete image' do
      visit root_path
      expect(page).to have_content '@test-user "New title"'
      accept_confirm "Are you sure?" do
        click_link 'Delete'
      end
      expect(page).to have_content 'Image was successfully deleted.'
    end

    it 'should delete account' do
      delete_account
      expect(page).to have_content 'User was successfully deleted.'
    end
  end
end
