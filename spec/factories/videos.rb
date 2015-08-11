FactoryGirl.define do
  factory :video do
    title "title"
	description "a descriptive sentence."
	type "mpg"
	link_address "www.youtube.com/video_example"
	file_name "vid.avi"
	likes 1
	dislikes 1
  end

end
