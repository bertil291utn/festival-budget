require_relative '../rails_helper'

RSpec.describe Festival, type: :model do
  describe 'association' do
    it { should belong_to(:fest_creator).class_name('User') }
    it { should have_many(:transactions) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:budget) }
    it { should validate_length_of(:name).is_at_least(7) }
    it {
      should validate_numericality_of(:budget).is_greater_than(100)
    }
  end
end
