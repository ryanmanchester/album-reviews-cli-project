require 'pry'
class AlbumReviews::Reviews
  attr_accessor :artist, :album, :author, :date, :rating, :url, :article
  @@all = []

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
