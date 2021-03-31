require 'rails_helper'

RSpec.describe 'Creating a user', type: :feature do
  scenario 'valid inputs' do
    visit root_path
    click_link "Sign up"
    fill_in 'user[name]', with: 'David Jones'
    fill_in 'user[email]', with: 'davidjones@example.com'
    fill_in 'user[password]', with: 'davidjones'
    fill_in 'user[password_confirmation]', with: 'davidjones'
    click_on 'Sign up'
    visit root_path
    expect(page).to have_content('David Jones')
  end
end