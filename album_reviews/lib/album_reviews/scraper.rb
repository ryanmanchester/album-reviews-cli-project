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
        self.review_profile_scrape(@review.url)
        #binding.pry

      end
    end

    def self.review_profile_scrape(review_link)
      doc = Nokogiri::HTML(open(review_link))
      #binding.pry
      @review.author = doc.css(".more-details .byline").children.text
      @review.rating = doc.css("#rating b").text
      @review.article = doc.css("#main > p:nth-child(11)").text

    end



end
