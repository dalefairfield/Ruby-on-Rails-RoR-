class Message < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :author, :message, presence:true
  validates :author, length: {minimum:5}
  validates :message, length: {minimum:15}
end
