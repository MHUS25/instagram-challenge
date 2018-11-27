# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Signing In', type: :feature do
  scenario 'successful sign in' do

    log_in(user_email: 'user1@test.com',
            user_password: 'password1')

    expect(page).to have_content 'Logged in as user1@test.com'
  end

  scenario 'incorrect email' do

   log_in(user_email: 'wrongemail@test.com',
            user_password: 'password1')

   expect(page).to have_content 'Invalid Email or password'
 end

 scenario 'incorrect password' do

   log_in(user_email: 'user1@test.com',
            user_password: 'wrongpassword')

   expect(page).to have_content 'Invalid Email or password'
 end
end
