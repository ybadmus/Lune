require 'csv'

namespace :import_csv do
  desc 'This task will import data from movies.csv file'
  task movies: :environment do
    @csv_file = Rails.root.join("movies.csv")
    @movies_params = []

    CSV.foreach(@csv_file, headers: true) do |row|

      params = {
        actor: row['Actor'],
        director: row['Director'],
        country: row['Country'],
        description: row['Description'],
        filming_location: row['Filming location'],
        movie: row['Movie'],
        year: row['Year'],
      }

      @movies_params << params
    end

    Movie.insert_all(@movies_params)
  end
end
