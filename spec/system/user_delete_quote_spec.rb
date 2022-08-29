require 'rails_helper'

RSpec.describe 'Delete quote', :type => :system do
  describe 'User access quotes index' do
    it 'and delete quote successfully' do
      create(:quote)
      visit(quotes_path)
      click_on('Delete')

      expect(page).to have_content("Quote was successfully destroyed.")
      expect(page).not_to have_content('Car repair')
    end
  end
end