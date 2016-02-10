class Relationship < ActiveRecord::Base
	belongs_to :user

	#We have to tell rails what class this is since 
	#friends are coming from the user model and not 
	#a unique one; this is an example of a "self-join"
	#table

	#user is the follower
	#friend is the followed
	belongs_to :friend, class_name: "User"
end
