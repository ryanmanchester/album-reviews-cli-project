class AlbumReviews::Reviews
  attr_accessor :artist, :album, :author, :label, :date, :rating, :url, :article
  @@all = []

  def self.all
    @@all
  end

end
