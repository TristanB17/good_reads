require 'rails_helper'

describe Book, type: :model do
  describe 'relationships' do
    it {should have_many(:reviews)}
  end
  describe 'rating calculations' do
    it 'returns average rating' do
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
      average_book_rating = 2.5

      expect(book.average_rating).to eq(average_book_rating)
    end
  end
end
