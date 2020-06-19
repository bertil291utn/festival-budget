class User < ApplicationRecord # :nodoc:
  has_many :festivals
  has_many :transactions
  has_attached_file :image
  validates_attachment_content_type :image, content_type: ['image/jpg', 'image/jpeg', 'image/png']

  validates :fullname, :username, :email, presence: true
  validates :username, :fullname, length: { minimum: 5 }
  validates_uniqueness_of :email, :username
end
