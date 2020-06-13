class Transaction < ApplicationRecord
  belongs_to :author_transaction, class_name: :User, foreign_key: :user_id
  belongs_to :festival, optional: true

  validates :description, :amount, presence: true
  validates :description, length: { minimum: 7 }
  validates :amount, format: { with: /\A\d{1,6}(\.\d{0,2})?\z/ }, numericality: { greater_than_or_equal_to: 1 }

  scope :with_festival, -> { joins(:festival).select('transactions.*,name as name_festival,image as image_festival').ordered }
  scope :without_festival, -> { where(festival_id: nil).ordered }
  scope :ordered, -> { order(created_at: :desc) }
end
