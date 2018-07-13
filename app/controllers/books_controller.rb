class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @average_book_rating = @book.average_rating
    binding.pry
  end
end
