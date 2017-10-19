class Product < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :users, through: :orders
  mount_uploader :photo, ImageUploader
end
