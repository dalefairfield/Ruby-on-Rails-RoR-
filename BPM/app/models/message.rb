class Message < ApplicationRecord
  belongs_to :post
  validates :author, presence:true
  validates :message, length: {minimum:15}
end
