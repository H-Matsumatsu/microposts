class Micropost < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, length: { maximum: 255 }
  
  #中間テーブル追加
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
end