class Tour < ApplicationRecord
	has_many :concerts

	mount_uploader :cover_tour, CoverTourUploader

end
