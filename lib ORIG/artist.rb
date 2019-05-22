class Artist

  attr_accessor :name
  @@all = []
  def initialize(name)
     @name=name
     @songs = []
     @@all << self
  end

  def add_song(song)
      song.artist = self
      @songs << song
  end

  def add_song_by_name(songname)
    newsong=Song.new(songname)
    newsong.artist = self
    @songs << newsong
  end

  def songs
    @songs
  end

  def self.song_count
    songcount = 0
    @@all.each do |artist|
      songcount += artist.songs.length
    end
    songcount
  end



end
