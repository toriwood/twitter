class User < ActiveRecord::Base
	#changes the text list of ids from the following variable into an array
	serialize :following, Array 


	validates :username, presence: true, uniqueness: true

	has_many :tweets
	has_many :relationships
	has_many :friends, through: :relationships

	has_many :inverted_relationships, class_name: "Relationship", foreign_key: "friends_id"
	has_many :sheep, through: :inverted_relationships, source: :user



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
