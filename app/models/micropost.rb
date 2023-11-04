class Micropost < ApplicationRecord
  has_many :comments, dependent: :destroy

  belongs_to :user
  validates :content, presence: true, length: { maximum: 140 }
end
