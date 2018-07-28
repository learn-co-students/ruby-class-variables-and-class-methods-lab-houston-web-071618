require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

  def self.genre_count
    counts = @@genres.inject(Hash.new(0)) { |h, e| h[e] += 1 ; h }
      # binding.pry
  end

  def self.artist_count
    counts = @@artists.inject(Hash.new(0)) { |h, e| h[e] += 1 ; h }
      # binding.pry
  end

end
