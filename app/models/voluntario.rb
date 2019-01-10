class Voluntario < ApplicationRecord
	mount_uploader :picture, PictureUploader
end
