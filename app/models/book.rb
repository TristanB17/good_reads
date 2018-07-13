class Book < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  def average_rating
    reviews.average(:rating)
  end

  def max_rating
    reviews.order(reviews: :desc).first
  end

  def min_rating
    reviews.order(reviews: :asc).first
  end 
end
