class AddAverageRatingToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column(:movies, :average_rating, :decimal, precision: 5, scale: 2, default: 0.0)
  end
end
