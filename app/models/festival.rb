# frozen_string_literal: true

class Festival < ApplicationRecord
  belongs_to :fest_creator, class_name: :User, foreign_key: :user_id
  has_many :transactions, dependent: :destroy
  has_attached_file :imageok, styles: { medium: '300x300>', thumb: '100x100>' }

  validates_attachment_content_type :imageok, content_type: ['image/jpg', 'image/jpeg', 'image/png']

  validates :name, :budget, :imageok, presence: true
  validates :name, length: { minimum: 7 }
  validates :budget, format: { with: /\A\d{1,6}(\.\d{0,2})?\z/ }, numericality: { greater_than: 100 }

  scope :with_username, -> { joins(:fest_creator).select('festivals.*, fullname') }
  scope :ordered, -> { order(name: :asc) }
end
