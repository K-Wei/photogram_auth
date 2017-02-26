class Comment < ApplicationRecord

  # validations
  # user_id: presence
  validates :user_id, :presence => true

  # photo_id: presence
  validates :photo_id, :presence => true

  # body: presence
  validates :body, :presence => true

  # associations
  belongs_to :user
  belongs_to :photo
end
