class Photo < ApplicationRecord

  # validations
  validates :user_id, :presence => true

  # associations
  belongs_to :user
  has_many :fans, :through => :likes, :source => :user
  has_many :likes

end
