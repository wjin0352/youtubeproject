require 'rails_helper'

RSpec.describe VideosController, type: :controller do
	describe 'GET #index' do
		it "renders the :index template" do
			video = create(:video)
			get :index, id: video
			expect(response).to render_template :index
		end
	end

	describe "GET #show" do

		it "assigns the requested video to @video" do
			video = create(:video)
			get :show, id: video
			expect(assigns(:video)).to eq video
		end

		it "renders the :show template" do
			video = create(:video)
			get :show, id: video
			expect(response).to render_template :show
		end

	end

	describe "GET #new" do 
		it "assigns a new Video to @video" do
		end

		it "renders the :new template" do
		end

	end

	describe "POST #create" do
		# before :each do 
		# 			 # use \A \z instead of \^ to avoid injection
		#   YT_LINK_FORMAT = /\A.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*\z/i
		 

		#   before :video do
		#   	uid = link_address.match(YT_LINK_FORMAT)
		#   	self.uid = uid[2] if uid && uid[2]
		 
		#   	if self.uid.to_s.length != 11
		#     	self.errors.add(:link, 'is invalid.')
		#     	false
		#   	elsif Video.where(uid: self.uid).any?
		#     	self.errors.add(:link, 'is not unique.')
		#     	false
		#   	else
		#     	get_additional_info
		#   	end
		# 	end
		 
		# 	def get_additional_info
		#   	begin
		#     	client = YouTubeIt::OAuth2Client.new(dev_key: ENV['API_key'])
		#     	video = client.video_by(uid)
		#     	self.title = video.title
		#     	self.duration = parse_duration(video.duration)
		#     	self.author = video.author.name
		#     	self.likes = video.rating.likes
		#     	self.dislikes = video.rating.dislikes
		#   	rescue
		#     	self.title = '' ; self.duration = '00:00:00' ; self.author = '' ; self.likes = 0 ; self.dislikes = 0
		#   	end
		# 	end
		 
		# 	def parse_duration(d)
		#   	hr = (d / 3600).floor
		#   	min = ((d - (hr * 3600)) / 60).floor
		#   	sec = (d - (hr * 3600) - (min * 60)).floor
		 
		#   	hr = '0' + hr.to_s if hr.to_i < 10
		#   	min = '0' + min.to_s if min.to_i < 10
		#   	sec = '0' + sec.to_s if sec.to_i < 10
		 
		#   	hr.to_s + ':' + min.to_s + ':' + sec.to_s
		# 	end

		# 	def video_params
		# 			params.require(:video).permit(:link_address, :title, :author, :duration)
		# 	end

		# end

		# end


		context "with valid attributes" do
			it "saves the new video in the database" do
				expect{
					post :create, video: attributes_for(:video, videos_attributes: @videos)
				}.to change(Video, :count).by(1)
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






















