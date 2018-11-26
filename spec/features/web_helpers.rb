def sign_up(user_email:, user_password:)
  visit('/users/sign_up')
  fill_in(:user_email, with: user_email)
  fill_in(:user_password, with: user_password)
  fill_in(:user_password_confirmation, with: user_password)
  click_button 'Sign up'
end
