class AlbumReviews::Reviews
  attr_accessor :artist, :album_name, :author, :label, :publication_date, :rating, :url
  @@all = []

  def self.all
    @@all
  end

  def self.review_index_scrape
    doc = Nokogiri::HTML(open("http://www.undertheradarmag.com/reviews/category/music/"))
    binding.pry
    #artist(featured) = doc.css(".headline").children.css("a").children[0].text
    #artist =  doc.css(".headline h3 a").children  *iterate over all names*
    #album_name = doc.css(".headline h4 i a").children  *iterate over these*
    #label = doc.css(".headline h5").children
    #publication_date = doc.css(".date").children
    #url = doc.css(".headline a").attribute("href").value

  end

  def self.review_profile_scrape
    doc = Nokogiri::HTML(open("http://www.undertheradarmag.com/reviews/david_byrne_american_utopia/"))
    #binding.pry
    #author = doc.css(".more-details").children.css("span").children.text
    #rating = doc.css("#rating b").children.text

  end

  #iteration code to assign artist, album, label (using artist as example):
  #artist_name = doc.css(".headline h3 a").children
  #artist_name.each do |name|
  #  if @artist == nil
  #    @artist = name.text
  #  else
  #   @artist
  #  end
  # end

end
