require 'rails_helper'

RSpec.describe 'Update quote', :type => :system do
  describe 'User access quotes index' do
    it 'and update quote successfully' do
      create(:quote)
      visit(quotes_path)
      click_on('Car repair')
      fill_in('quote_name', with: 'Walmart')
      click_on('Update quote')

      expect(current_path).to eq(quotes_path)
      within 'quote' do
        expect(page).to have_content('Walmart')
      end
    end
  end
end