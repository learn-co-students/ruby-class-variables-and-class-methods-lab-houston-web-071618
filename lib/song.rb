class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count +=1
  end # initialize

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
    genre_item_count = Hash.new(0)
    @@genres.each do |item|
      genre_item_count[item]+=1
    end
    genre_item_count
  end #self.genre_count

  def self.artist_count
    artist_item_count = Hash.new(0)
    @@artists.each do |item|
      artist_item_count[item]+=1
    end
    artist_item_count
  end #self.artist_count

end #class Song
