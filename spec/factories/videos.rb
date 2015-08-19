FactoryGirl.define do
  factory :video do
    title "title"
		description "a descriptive sentence."
		video_type "mpg"
		link_address "https://www.youtube.com/watch?v=4z61pIsuI3A"
		likes 1
		dislikes 1
  end

  factory :invalid_video do
		link_address nil
	end

end


  