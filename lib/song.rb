require "pry"

class Song

attr_accessor :name, :artist, :genre

# class is responsible to keep count of all songs, all genres, all artists
# class var count set to 0 from start
@@count = 0

# empty array will only be unique elements
@@genres = []
@@artists = []

  def initialize(name, artist, genre)
    @name = name
    # each instance is added to class var count
    @@count += 1
    @genre = genre
    @artist = artist
    @@artists << @artist
    @@genres << @genre
  end

  # method to get @@count when .count is used
  def self.count
    @@count
  end

  # class method returns array of unique artists
  def self.artists
    @@artists.uniq
  end
  # binding.pry

  # class method returns hash of key: genre str value: count int
  def self.artist_count
    # call the artist_count here
    artist_count = {}
    @@artists.each do | artist |
      # if artist_count hash has key of artist add one if not set the first one
      if artist_count[artist]
        artist_count[artist] += 1
        else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
  # binding.pry

  # class method returns array of unique genres
  def self.genres
    @@genres.uniq
  end

  # class method returns hash of key: genre str value: count int
  def self.genre_count
    genre_count = {}
    @@genres.each do | genre |
      # how is genres_count[genre] the condition evaluating the genre?
      if genre_count[genre]
      genre_count[genre] += 1
      else
      genre_count[genre] = 1
      end
    end
    genre_count
  end

end
