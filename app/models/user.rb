class User < ApplicationRecord
  has_many :events

  validates :name, presence: true, length: { maximum: 35 }
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: true
  validates :email, format: { with: /\A[^@\s]+@(?:[-a-z0-9]+\.)+[a-z]{2,}\z/i }
end
