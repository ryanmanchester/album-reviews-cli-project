class AlbumReviews::Scraper

  def self.review_index_scrape
    doc = Nokogiri::HTML(open("http://www.undertheradarmag.com/reviews/category/music/"))
# binding.pry
    doc.css(".teaser").each do |article|
      @review = AlbumReviews::Reviews.new

        @review.artist = article.css(".headline h3 a").children.text
        @review.album = article.css(".headline h4 i a").children.text
        @review.label = article.css(".headline h5").children.text
        @review.date = article.css(".date").children.text
        @review.url = article.css(".headline a").attribute("href").value
        AlbumReviews::Reviews.all << @review
        #binding.pry
        self.review_profile_scrape(@review.url)
      end
    end

  def self.review_profile_scrape(review_link)
    doc = Nokogiri::HTML(open(review_link))
    @review.author = doc.css(".more-details").children.css("span").children.text
    @review.rating = doc.css("#rating b").children.text
       binding.pry
     end

end