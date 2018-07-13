require 'rails_helper'

describe "A user" do
  describe "visiting a company show page" do
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
  end
end
