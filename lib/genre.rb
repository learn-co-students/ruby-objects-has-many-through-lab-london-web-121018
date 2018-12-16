require 'pry'

class Genre
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.map do |song|
      song.artist
    end 
  end

end

#Test Method
jay_z = Artist.new("Jay-Z")
adele = Artist.new("Adele")
ed = Artist.new("Ed Sheeran")

pop = Genre.new("Pop")
rap = Genre.new("Rap")

song1 = Song.new("Hello", adele, pop)
song2 = Song.new("GOD", jay_z, rap)
song3 = Song.new("A-team", ed, pop)
song4 = Song.new("Someone like you", adele, pop)

binding.pry
