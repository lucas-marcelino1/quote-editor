require 'rails_helper'

RSpec.describe 'Quote index', :type => :system do
  describe 'User views quote index page' do
    it 'successfully' do
      visit(quotes_path)


      expect(current_path).to eq(quotes_path)
      within 'h1' do
      expect(page).to have_content('Quotes')
      end
    end

    it 'and view quotes' do
      create(:quote)
      create(:quote, name: 'Dinner out')
      visit(quotes_path)


      expect(current_path).to eq(quotes_path)
      expect(page).to have_content('Quotes')
      expect(page).to have_content('Dinner out')
      expect(page).to have_content('Car repair')
    end
  end
end