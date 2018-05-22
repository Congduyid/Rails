class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	 validates :title, presence: {message: "Ko dc de trong"},length: { minimum: 5, too_short: "qua ngan"}, uniqueness: true
	end