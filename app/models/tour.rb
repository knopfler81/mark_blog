class Tour < ApplicationRecord
	has_many :concerts

	mount_uploader :cover_tour, CoverTourUploader

	validates :title, presence: true
	validates :year, presence: true

end
