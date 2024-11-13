class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence:true
  validates :address, presence:true
  validates :category, presence:true, acceptance: { accept: ["chinese", "italian", "japanese", "french", "belgian"] }
  validates :phone_number, format: { with: /[0-9 ]+/, message: "no letters allowed" }
end
