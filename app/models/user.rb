class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  # validations
  # username: presence, uniqueness
  validates :username, :presence => true, :uniqueness => true

  # associations
  has_many :liked_photos, :through => :likes, :source => :photo
  has_many :commented_photos, :through => :comments, :source => :photo
  has_many :likes
  has_many :photos
end
