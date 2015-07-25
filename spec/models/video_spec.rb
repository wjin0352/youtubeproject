require 'rails_helper'

describe Video do
	it "is valid with a title, description, type, link_address, file_name, likes, and dislikes" do
		video = Video.new(
				title: "video1",
				description: "video 1 sample",
				type: 'mpg',
				link_address: "www.youtube.com/video1",
				file_name: "video1",
				likes: 1,
				dislikes: 0
							)
		expect(video).to be_valid
	end

end

