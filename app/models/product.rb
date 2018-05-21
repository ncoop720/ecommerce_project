class Product < ApplicationRecord
	mount_uploader :image, ImageUploader

	belongs_to :category

	validates :image, presence: :true
end
