class Evento < ApplicationRecord
	mount_uploader :picture, PictureUploader
end
