require 'pry'
class AlbumReviews::CLI

  def call
    puts "This week's album reviews:"
    start
    list_reviews
    menu
  end

  def list_reviews
    @reviews = AlbumReviews::Reviews.all
    @reviews.each.with_index(1) do |review, i|
      puts "#{i}. #{review.artist} - #{review.album} - #{review.author} (#{review.date})"
    end
  end


  def start
    AlbumReviews::Scraper.review_index_scrape
  end


  def menu
    input = nil
    while input != 'exit'
      puts "Which review would you like to read? Or type 'list' to list all albums or 'exit' to leave."
      input = gets.strip.downcase

      if input.to_i > 0
        selected_review = @reviews[input.to_i - 1]
        puts "#{selected_review.artist} - #{selected_review.album} - #{selected_review.author} (#{selected_review.date})"
        puts "#{selected_review.article}"
        puts "#{selected_review.author.gsub("By","").strip}'s rating: #{selected_review.rating} out of 10"
        puts "-------"
      elsif input == "list"
        list_reviews
      else
        puts "Which album? Type 'list' to see all reviews or 'exit'."
      end
    end
  end

end
