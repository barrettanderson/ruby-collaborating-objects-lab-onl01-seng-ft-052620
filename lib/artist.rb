class Artist
  attr_accessor :name
  @@all
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end



  def add_song(song)
    @songs << song
    song.artist = self
  end


end
