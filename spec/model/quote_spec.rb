require 'rails_helper'

RSpec.describe 'Quote', :type => :model do
  describe '#valid?' do
    it 'presence of name' do
      quote = build(:quote, name: '')
      expect(quote).not_to be_valid
    end
  end
end