require 'rails_helper'

describe "A user" do
  describe "visiting a book show page" do
    it 'sees a list of reivews, with a body, rating, and user name' do
      book = Book.create(title: "Deadpool: Not as Cool of an Antihero as Venom ")
      user = User.create(name: "Jackon Pollock")
      review_1 = Review.create(book_id: 1,
                         user_id: 1,
                         content: 'Hooplah',
                         rating: 2)
      review_2 = Review.create(book_id: 1,
                         user_id: 1,
                         content: 'Hooplah',
                         rating: 3)

      visit book_path(book)

      expect(current_path).to eq("/books/#{book.id}")
      expect(page).to have_content(review_1.content)
      expect(page).to have_content(review_1.rating)
      expect(page).to have_content(review_2.content)
      expect(page).to have_content(review_2.rating)
    end
    it 'sees a the average, highest, and lowest ratings for a book' do
      book = Book.create(title: "Deadpool: Not as Cool of an Antihero as Venom ")
      user = User.create(name: "Jackon Pollock")
      review_1 = Review.create(book_id: 1,
                         user_id: 1,
                         content: 'Hooplah',
                         rating: 2)
      review_2 = Review.create(book_id: 1,
                         user_id: 1,
                         content: 'Hooplah',
                         rating: 3)
      book_average_rating = 2.5
      highest_book_rating = 3
      lowest_book_rating = 2

      visit book_path(book)

      expect(page).to have_content(highest_book_rating)
      expect(page).to have_content(lowest_book_rating)
      expect(page).to have_content(book_average_rating)
    end
  end
end
