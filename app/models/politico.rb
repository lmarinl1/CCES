class Politico < ApplicationRecord
	mount_uploader :picture, PictureUploader
end
