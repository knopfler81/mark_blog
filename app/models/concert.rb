class Concert < ApplicationRecord
	belongs_to :tour
	mount_uploaders :attachments, AttachmentUploader

	validates :tour_id, presence: true
	validates :date, presence: true
	validates :city, presence: true
	validates :venue, presence: true
	validates :content, presence: true
end
