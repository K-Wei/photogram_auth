class Photo < ApplicationRecord

  # validations
  validates :user_id, :presence => true

  # associations
  has_many :fans, :through => :likes, :source => :user
end
