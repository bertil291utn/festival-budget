class User < ApplicationRecord
  has_many :festivals
  has_many :transactions
end
