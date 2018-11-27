# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Signing Up', type: :feature do
  scenario 'successful sign up' do
    sign_up(user_email: 'user@test.com',
            user_password: 'password1')

    expect(page).to have_content 'Logged in as user@test.com'
    expect(page).to have_content 'signed up successfully.'
  end

  scenario 'password must be longer than 6 characters' do
    sign_up(user_email: 'user@test.com',
            user_password: '1')

    expect(page).to have_content 'Password is too short (minimum is 6 characters)'
  end

  scenario 'user must enter a valid email' do
    sign_up(user_email: 'usertest.com',
            user_password: 'password1')

    expect(page).to have_content 'Email is invalid'
  end
end
