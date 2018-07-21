
class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  #attr_reader :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre


    #initialization of class variables
    @@count += 1 #keep count of songs
    @@artists << @artist
    @@genres << @genre
    Song.add_genre(genre)
    Song.add_artist(artist)
  end

  attr_reader :name, :artist, :genre

  def self.count
    @@count
  end

  def self.genre_count
    @@genre_count
  end

  def self.artists
    @@artists.uniq
  end

  def self.add_genre(genre)
    if @@genre_count.has_key?(genre)
      @@genre_count[genre] += 1
    else
      @@genre_count[genre] = 1
    end

  end

  def self.genres
    @@genres.uniq
  end

  def self.add_artist(artist)
    if @@artist_count.has_key?(artist)
      @@artist_count[artist] += 1

    else
      @@artist_count[artist] = 1
    end

  end

  def self.artist_count
    @@artist_count
  end



end
