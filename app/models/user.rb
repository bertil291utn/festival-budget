class User < ApplicationRecord
  has_many :festivals
  has_many :transactions

  validates :fullname, :username, :email, presence: true
  validates :username, :fullname, length: { minimum: 5 }
  validates_uniqueness_of :email, :username
end
