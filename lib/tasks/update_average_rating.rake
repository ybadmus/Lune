namespace :import_csv do
  desc 'This task will add the average ratings to the movies'
  task average_rating: :environment do
    titles = Review.pluck(:movie).uniq

    titles.each do |title|
      sum = Review.where(movie: title).sum(:stars)
      count = Review.where(movie: title).count

      Movie.where(movie: title).update_all(average_rating: count.zero? ? 0.0 : sum / count.to_f)
    end
  end
end
