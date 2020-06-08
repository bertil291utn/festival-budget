require_relative '../rails_helper'

RSpec.describe User, type: :model do
  describe 'association checks' do
    it { should have_many(:festivals) }
    it { should have_many(:transactions) }
  end
end
