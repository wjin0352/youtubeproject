require 'rails_helper'

RSpec.describe VideosController, type: :controller do
	describe 'GET #index' do
		it "renders the :index template" do
			
		end
	end

	describe "GET #show" do
		it "assigns the requested video to @video" do
		end

		it "renders the :show template" do
		end

	end

	describe "GET #new" do 
		it "assigns a new Video to @video" do
		end

		it "renders the :new template" do
		end

	end

	describe "POST #create" do

		context "with valid attributes" do
			it "saves the new video in the database" do
				post :create, video: attributes_for(:video)
				
			end

			it "redirects to videos#index" do
			end
		end

		context "with invalid attributes" do
			it "does not save new video in the database" do

			end

			it "re-renders the :new template" do
			end

		end

	end



end





















