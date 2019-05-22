require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all=[]


  def initialize(name)
    @name = name
    @songs=[]
    @@all << self
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(name)
    newsong = Song.new(name)
    newsong.artist = self
    @songs << newsong
  end

  def self.all
    @@all
  end

  def self.song_count
    allsongcount=0
    self.all.each do |artist|

      allsongcount += artist.songs.length

    end
    allsongcount

  end


end
