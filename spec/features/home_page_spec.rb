require 'rails_helper'

describe "the home page" do 
  let(:user) { FactoryGirl.create(:user) }

  before :each do
  	visit 'users#index'
  end

  # context 'when user is not logged in' do
    
  #   it 'allows the user to log in' do
  #     fill_in 'Email', with: user.email
  #     fill_in 'Password', with: user.password
  #     click_button 'Log in'

  #     expect(page).to have_content user.name
  # 	end
  # end




end
