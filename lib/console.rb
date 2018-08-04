require_relative './song.rb'
require 'pry'

song = Song.new("Gold", "Imagine Dragons", "pop")
song2 = Song.new("Silver", "Imagine Lions", "country")

binding.pry
Song.artist_count
