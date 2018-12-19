

class Genre

    attr_accessor :name, :artist, :song

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def self.all 
        @@all
    end

    def artists
        Song.all.collect do |song| 
            if song.genre == self
                song.artist
            end
        end
    end
end