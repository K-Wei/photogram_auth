class Like < ApplicationRecord

  # validations
  # user_id: presence, uniqueness in combination with photo
  validates :user_id, :presence => true, :uniqueness => { :scope => :photo_id }
  # photo_id: presence
  validates :photo_id, :presence => true

  # associations
  belongs_to :user
  belongs_to :photo

end
