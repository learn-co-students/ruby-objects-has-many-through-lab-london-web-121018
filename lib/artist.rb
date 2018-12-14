class Artist
  attr_accessor :name
  attr_accessor :genres

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end


  def self.all
    @@all
  end

  def new_song(song_name,genre)
    song = Song.new(song_name,self,genre)

    song
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    self.songs.collect do |song|
      song.genre 
    end
  end
end
