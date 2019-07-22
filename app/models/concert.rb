class Concert < ApplicationRecord
	belongs_to :tour

	has_many :videos, inverse_of: :concert

	mount_uploaders :attachments, AttachmentUploader

	accepts_nested_attributes_for :videos, allow_destroy: true

	validates :tour_id, presence: true
	validates :date, presence: true
	validates :city, presence: true
	validates :venue, presence: true
	validates :content, presence: true
end
