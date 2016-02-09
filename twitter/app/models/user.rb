class User < ActiveRecord::Base
	#changes the text list of ids from the following variable into an array
	serialize :following, Array 


	validates :username, presence: true, uniqueness: true

	has_many :tweets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
