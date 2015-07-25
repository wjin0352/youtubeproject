require 'rails_helper'


describe User do

  it "is valid with a firstname, lastname, email, username, description and email" do
    user = User.new(
    	firstname: 'Jenn',
    	lastname: 'Dough',
    	email: 'jenn@example.com',
    	username: 'jennuser',
    	description: 'this is my page',
      password: 'abc12345'
    	)
    expect(user).to be_valid
  end

  it "is invalid without a firstname" do
    user = User.new(firstname: nil)
    user.valid?
    expect(user.errors[:firstname]).to include("can't be blank")
  end

  it "is invalid without a lastname" do
  	user = User.new(lastname: nil) 
  	user.valid?
  	expect(user.errors[:lastname]).to include("can't be blank")
  end


  it "is invalid without an email" do
  	user = User.new(email: nil) 
  	user.valid?
  	expect(user.errors[:email]).to include("can't be blank")
  end

  it "is invalid without a username" do
  	user = User.new(username: nil) 
  	user.valid?
  	expect(user.errors[:username]).to include("can't be blank")
  end

  it "is invalid without a description" do 
  	user = User.new(description: nil) 
  	user.valid?
  	expect(user.errors[:description]).to include("can't be blank")
  end

  it "is invalid with a duplicate email address" do
    User.create(
      firstname: 'Joe', lastname: 'Dough',
      description: 'a description',
      email: 'joe@example.com',
      username: 'joeuser' ,
      password: 'abc12345'
      )
    user = User.new(
      firstname: 'Jane', lastname: 'Dough', description: 'some description',
      username: 'janeuser',
      email: 'joe@example.com'

      )
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end



end


















