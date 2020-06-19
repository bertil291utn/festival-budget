require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe 'association' do
    it { should belong_to(:author_transaction).class_name('User') }
    it { should belong_to(:festival) }
  end

  describe 'validations' do
    subject { create :transaction }
    it 'transaction model' do
      should validate_presence_of(:description)
      should validate_length_of(:description).is_at_least(7)
      should validate_presence_of(:amount)
      should allow_value(12.76).for(:amount)
      should_not allow_value(%w[hola 34345345 df453453 34.677]).for(:amount)
      should validate_numericality_of(:amount).is_greater_than_or_equal_to(1)
    end
  end
end
