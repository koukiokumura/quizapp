class Content < ApplicationRecord
  belongs_to :user
  has_many :reviews
  mount_uploader :image, ImageUploader
  has_many :choices
  accepts_nested_attributes_for :choices
  def review_average
    reviews.average(:rate).round
  end
end
