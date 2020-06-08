require_relative '../rails_helper'

RSpec.describe Transaction, type: :model do
  describe 'association checks' do
    it { should belong_to(:author_transaction).class_name('User') }
    it { should belong_to(:festival) }
  end
end
