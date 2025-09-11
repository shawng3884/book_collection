require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do

  scenario 'valid inputs' do
    visit new_book_path

    fill_in 'book_title', with: 'Correct Book'
    fill_in 'book_author', with: 'Shawn Gao'
    fill_in 'book_price', with: '20'

    select "2025", from: "book_published_date_1i"
    select "January", from: "book_published_date_2i"
    select "1", from: "book_published_date_3i"

    click_on 'Create Book'

    expect(page).to have_content('')
  end

  scenario 'invalid inputs' do
    visit new_book_path
    fill_in 'book[title]', with: ''
    click_on 'Create Book'

    expect(page).to have_content("Title can't be blank")
  end
end

