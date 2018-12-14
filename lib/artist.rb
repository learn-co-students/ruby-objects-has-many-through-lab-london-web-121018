require "pry"

class Artist

  attr_accessor :name, :genre

  @@all = []

  def initialize (name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(songname, genre)
    song = Song.new(songname, self, genre)
    @songs << song
    song
  end

  def songs
    @songs
  end

  def genres
    genres = []
    @songs.each do |song|
      genres << song.genre
    end
    genres
  end


end
