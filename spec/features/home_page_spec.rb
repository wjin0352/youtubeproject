require 'rails_helper'

describe "sign in" do 
  before :each do
  	visit 'users#index'
  end

  feature 'when password is invalid' do
    it "gives errors message when password is to short" do
      user = FactoryGirl.build(:user)
      user.password = '123'
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 8 characters)")
    end
  end

end

describe "home page" do 
  before :each do 
    visit 'users#index' 
  end

  feature 'when a guest visits our home page' do
    it "they see 'Add Video Now' button" do
      expect(page).to have_content('Add Video Now')
    end

    it "they click on Add Video Now button and get redirected to new video page" do
      click_link('Add Video Now!')
      expect(page).to have_content('New Video')
    end

  end



end






























