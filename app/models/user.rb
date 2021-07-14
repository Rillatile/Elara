class User < ApplicationRecord
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :username, presence: true
  validates :password_digest, presence: true
  validates :surname, presence: true
  validates :name, presence: true
  validates :sex, presence: true
  validates :birthday, presence: true

  enum sex: [:male, :female]
end
