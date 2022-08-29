require 'rails_helper'

RSpec.describe 'Create quote', :type => :system do
  describe 'User access quotes index' do
    it 'and create quote successfully' do
      visit(quotes_path)
      click_on('New quote')
      fill_in('quote_name', with: 'Car repair')
      click_on('Create quote')

      expect(current_path).to eq(quotes_path)
      expect(page).to have_content('Car repair')
    end

  end
end