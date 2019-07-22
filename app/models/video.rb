class Video < ApplicationRecord
	belongs_to :concert, optional: true

	validates :url, presence: true, format: {with: (/\Ahttps?:\/\/(?:www\.)?youtube.com\/watch\?(?=.*v=\w+)(?:\S+)?\z/)}

	def embed
		self.url = self.url.sub("watch?v=", "embed/")
	end

end
