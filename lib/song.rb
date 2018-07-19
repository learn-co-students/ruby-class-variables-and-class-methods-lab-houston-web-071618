require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    self.count_hash_maker(@@genres)
  end

  def self.artist_count
    self.count_hash_maker(@@artists)
  end

  def self.count_hash_maker(array)
    count_hash = {}

    array.each do |el|
      if count_hash[el]
        count_hash[el] += 1
      else
        count_hash[el] = 1
      end
    end

    count_hash
  end

end
