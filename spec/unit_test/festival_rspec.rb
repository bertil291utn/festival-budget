require_relative '../rails_helper'

RSpec.describe Festival, type: :model do
  describe 'association checks' do
    it { should belong_to(:fest_creator).class_name('User') }
    it { should have_many(:transactions) }
  end
end
