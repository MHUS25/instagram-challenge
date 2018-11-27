require 'rails_helper'

RSpec.feature 'Signing Out', type: :feature do
  scenario 'successful sign out' do

    log_in(user_email: 'user1@test.com',
            user_password: 'password1')

    click_link('Logout')

    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end
end
