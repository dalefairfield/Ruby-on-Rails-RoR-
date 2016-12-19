class User < ApplicationRecord
  has_secure_password
  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets, through: :likes, source: :secret
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, :email, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :password, presence: true
end
