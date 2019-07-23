class Calendar < ApplicationRecord
	mount_uploaders :images, ImageUploader
end
