class Post < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, length: {maximum: 140} 
  validates :expiration, presence: true
end
