class AlbumReviews::Reviews
  attr_accessor :artist, :album_name, :author, :label, :publication_date, :rating, :url

  def self.all
    puts <<~END
    1. Album of the Week: Mount Eerie
    2. Other Reviews: Yo La Tango
    END

    review_1 = self.new
    review_1.artist = "Mount Eerie"
    review_1.author = "Stephen Mayne"
    review_1.album_name = "Now Only"
    review_1.label = "P.W. Elverum & Sum"
    review_1.publication_date = "March 15, 2018"
    review_1.url = "http://www.undertheradarmag.com/reviews/mount_eerie_now_only/"
    review_1.rating = "8.5/10"

    review_2 = self.new
    review_2.artist = "Yo La Tango"
    review_2.author = "Adam Turner-Heffer"
    review_2.album_name = "There’s a Riot Going On"
    review_2.label = "Matador"
    review_2.publication_date = "Mar 16, 2018"
    review_2.url = "http://www.undertheradarmag.com/reviews/yo_la_tengo_theres_a_riot_going_on/"
    review_2.rating = "8/10"

    [review_1, review_2]
  end

end
