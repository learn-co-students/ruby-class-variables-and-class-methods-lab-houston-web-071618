class Song
	@@genres = []
	@@artists = []
	@@count = 0

	attr_accessor :name, :artist, :genre

	def initialize(name, artist, genre)
		self.name = name
		self.artist = artist
		self.genre = genre

		@@count += 1
		@@genres << genre
		@@artists << artist

	end

	def self.count
		@@count
	end

	def self.genres
		@@genres = @@genres.uniq
	end

	def self.artists
		@@artists = @@artists.uniq
	end


	def self.genre_count

		genrecounthash = {}

		@@genres.each do |genre|
			genrecounthash[genre] ||= 0
			genrecounthash[genre] += 1
		end

		genrecounthash

	end

	def self.artist_count
		artistcounthash = {}

		@@artists.each do |artist|
			artistcounthash[artist] ||= 0
			artistcounthash[artist] += 1
		end

		artistcounthash
	end



end
