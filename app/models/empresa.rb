class Empresa < ApplicationRecord
	mount_uploader :picture, PictureUploader
end
