require 'rails_helper'

describe Comment do
  it "is valid with a comment" do
		comment = Comment.new(comment: 'this is a comment.')
		expect(comment).to be_valid
	end

	it "is valid with a comment" do
		expect(FactoryGirl.build(:comment)).to be_valid
	end

	it "is invalid without a comment" do
	  comment = Comment.new(comment: nil)
	  comment.valid?
	  expect(comment.errors[:comment]).to include("can't be blank")
	end


end









































