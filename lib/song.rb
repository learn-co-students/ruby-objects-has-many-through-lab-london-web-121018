class Song

  attr_accessor :name, :genre, :artist

  @@songs = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@songs << self
  end

  def genre
    @genre
  end

  def self.all
    @@songs
  end

end
