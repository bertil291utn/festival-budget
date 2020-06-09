class Transaction < ApplicationRecord
  belongs_to :author_transaction, class_name: :User, foreign_key: :user_id
  belongs_to :festival

  validates :description, :amount, presence: true
  validates :description, length: { minimum: 7 }
  validates :amount, format: { with: /\A\d{1,6}(\.\d{0,2})?\z/ }, numericality: { greater_than: 1 }
end
