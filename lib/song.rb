class Song
  @@count = 0
  @@genres = []
  @@artists = []
attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
@name = name
@artist = artist
@genre = genre
@@count += 1
@@genres << genre
@@artists << artist
end

  def self.count
    @@count
  end

  def self.genres
@@genres.uniq
end

  def self.artists
@@artists.uniq
end

def self.genre_count
  genre_c = Hash.new(0)
  @@genres.each{|genre|
    genre_c[genre] += 1
  }
  return genre_c
end

def self.artist_count
  artist_c = Hash.new(0)
@@artists.each{|artist|
  artist_c[artist] += 1
}
return artist_c

end
end 
