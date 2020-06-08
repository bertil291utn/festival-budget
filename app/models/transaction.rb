class Transaction < ApplicationRecord
  belongs_to :author_transaction, class_name: :User, foreign_key: :user_id
  belongs_to :festival
end
