# REQUIRE ====================================
require 'pry'


#=============================================

class Song
 # Class Variables ===========================
  @@count = 0
  @@artists = []
  @@genres = []
 #============================================
 # general thing to think about:
 # Song NAME, ARTISTS, and GENRE don't really
 # change so attr_reader will suffice
  attr_reader :name, :artist, :genre
 # Initializer ===============================
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 # every Song.new() increments this
    tempArray = []


    tempArray = (@@artists + [artist])#.uniq
    (@@artists = tempArray)
    tempArray = (@@genres + [genre])#.uniq
    (@@genres = tempArray)
    #@@artists << [artist]
    #@@genres << [genre]

    #binding.pry

  end
 #============================================
 def self.count
   @@count
 end
 def self.artists
   @@artists.uniq
 end
 def self.genres
   @@genres.uniq
 end

 #============= NOT QUITE SURE WHAT WAS EXPECTED BUT THESE PASS THE TESTS!!!!
 #============= JANKY CODE AHEAD =============================
 def self.artist_count
   #hash of some stuff!!
   tempHash = {}
   self.artists.reverse.each_with_index do |element,index|

     tempHash[element] = index+1
   end
   tempHash
 end
 def self.genre_count
   #hash of genre stuff (i.e.: "pop" => 1)

   tempHash = {}
   self.genres.reverse.each_with_index do |element,index|

     tempHash[element] = index+1
   end
   tempHash

 end



end
