require 'rails_helper'

describe "User sees all books" do
  scenario "a user sees all the books" do
    book_one = Book.create!(title: "My Immortal")
    book_two = Book.create!(title: "Greatest Fanfic Ever")

    visit books_path

    expect(page).to have_link(book_1.title)
    expect(page).to have_link(book_2.title)
  end
end
