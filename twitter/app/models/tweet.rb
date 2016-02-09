class Tweet < ActiveRecord::Base

	validates :message, presence: true, length: {maximum: 145}

	belongs_to :user

end
