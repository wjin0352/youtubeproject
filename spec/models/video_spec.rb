require 'rails_helper'

describe Video do
  it "is valid with a title, description, video_type, link_address, file_name, likes, and dislikes" do
		video = Video.new(
			title: 'video1',
			description: 'video 1 sample',
			# video_type: 'mpg',
			link_address: 'www.youtube.com/video1',
			file_name: 'video1',
			likes: 1,
			dislikes: 1
			)
		expect(video).to be_valid
	end

	it "is invalid without a title" do 
		video = Video.new(title: nil)
		video.valid?
		expect(video.errors[:title]).to include("can't be blank")
	end

	it "is invalid without a link_address" do 
		video = Video.new(link_address: nil)
		video.valid?
		expect(video.errors[:link_address]).to include("can't be blank")
	end

end




















