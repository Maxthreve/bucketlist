require 'rails_helper'

feature 'user can sign in' do
  scenario 'user signs in with valid credentials' do
    user = create(:user)
    sign_in(user)
    expect(page).to have_text('Bucket List')
  end

  def sign_in(user)
    visit new_user_session_path
    fill_in('Email', with: user.email)
    fill_in('Password', with: user.password)
    click_button('Log in')
  end
end
