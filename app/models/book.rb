class Book < ApplicationRecord
<<<<<<< HEAD
  validates :title, presence: true
  validates :author, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :published_date, presence: true
=======
>>>>>>> 90e6c2baf9330c34eecbb8bd5874b53b633815b6
end
