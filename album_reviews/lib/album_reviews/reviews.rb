class AlbumReviews::Reviews
  attr_accessor :artist, :album, :author, :label, :date, :rating, :url
  @@all = []

  def self.all
    @@all
  end

end
