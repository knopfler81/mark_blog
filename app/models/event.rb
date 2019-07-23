class Event < ApplicationRecord

	mount_uploaders :pictures, PictureUploader

	validates :date, presence: true
	validates :title, presence: true
	validates :venue, presence: true
	validates :content, presence: true
	
end
