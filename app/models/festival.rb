class Festival < ApplicationRecord
  belongs_to :fest_creator, class_name: :User, foreign_key: :user_id
  has_many :transactions
end
