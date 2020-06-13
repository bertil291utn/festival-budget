class Festival < ApplicationRecord
  belongs_to :fest_creator, class_name: :User, foreign_key: :user_id
  has_many :transactions

  validates :name, :budget, presence: true
  validates :name, length: { minimum: 7 }
  validates :budget, format: { with: /\A\d{1,6}(\.\d{0,2})?\z/ }, numericality: { greater_than: 100 }

  default_scope { joins(:fest_creator).select('festivals.*, username') }
  scope :ordered, -> { order(name: :asc) }
end
