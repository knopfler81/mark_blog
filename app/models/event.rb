class Event < ApplicationRecord

	mount_uploaders :pictures, PictureUploader

end
