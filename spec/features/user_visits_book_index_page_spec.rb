require 'rails_helper'

describe "a User" do
  describe "visiting the index page" do
    it "sees all the books" do
      book_one = Book.create!(title: "My Immortal")
      book_two = Book.create!(title: "Greatest Fanfic Ever")

      visit books_path

      expect(page).to have_link(book_one.title)
      expect(page).to have_link(book_two.title)
    end
    it "can link to an individual book show page" do
      book_one = Book.create!(title: "My Immortal")
      book_two = Book.create!(title: "Greatest Fanfic Ever")

      visit books_path
      click_link book_one.title

      expect(current_path).to eq(book_path(book_one))
    end
  end
end
