require 'csv'

namespace :import_csv do
  desc 'This task will import data from movies.csv file'
  task reviews: :environment do
    @csv_file = Rails.root.join("reviews.csv")
    @reviews_params = []

    CSV.foreach(@csv_file, headers: true) do |row|

      params = {
        movie: row['Movie'],
        user: row['User'],
        stars: row['Stars'],
        review: row['Review']
      }

      @reviews_params << params
    end

    Review.insert_all(@reviews_params)
  end
end
