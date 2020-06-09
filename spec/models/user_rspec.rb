require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:festivals) }
    it { should have_many(:transactions) }
  end

  describe 'validations' do
    subject { create :user }
    it 'validates each field for User model' do
      should validate_presence_of(:fullname)
      should validate_presence_of(:username)
      should validate_presence_of(:email)
      should validate_length_of(:fullname).is_at_least(5)
      should validate_length_of(:username).is_at_least(5)
      should validate_uniqueness_of(:username)
      should validate_uniqueness_of(:email)
    end
  end
end
