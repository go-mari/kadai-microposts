class Micropost < ApplicationRecord
  # Micropost（投稿）は一人のUserが行う（所属belongs_to)もの
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :favorites
  has_many :like_users, through: :favorites, source: :user
end
