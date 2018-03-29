class AlbumReviews::Reviews
  attr_accessor :artist, :album, :author, :label, :date, :rating, :url
  @@all = []

  def self.all
    @@all
  end


  # def self.review_index_scrape
  #   doc = Nokogiri::HTML(open("http://www.undertheradarmag.com/reviews/category/music/"))
  #
  #   doc.css(".teaser").each do |article|
  #     review = self.new
  #     binding.pry
  #       review.artist = article.css(".headline h3 a").children.text
  #       review.album = article.css(".headline h4 i a").children.text
  #       review.label = article.css(".headline h5").children.text
  #       review.date = article.css(".date").children.text
  #       review.url = article.css(".headline a").attribute("href").value
  #       self.all << review
  #       self.review_profile_scrape(review.url)
  #     end
  #   end
  #
  # def self.review_profile_scrape(review_link)
  #   doc = Nokogiri::HTML(open(review_link))
  #   #binding.pry
  #    author = doc.css(".more-details").children.css("span").children.text
  #   @rating = doc.css("#rating b").children.text
  #
  # end

end
