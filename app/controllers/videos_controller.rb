class VideosController < ApplicationController

	def new
		@video = Video.new
	end

	def create
		@video = Video.new(video_params)
			if @video.save
				flash[:success] = "Video added"
				redirect_to root_url
			else
				render 'new'
			end
	end

	private

		def video_params
			params.require(:video).permit(:link_address, :title)
		end


end