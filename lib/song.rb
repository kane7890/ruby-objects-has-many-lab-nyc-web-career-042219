class Song
  @@all=[]
  attr_accessor :artist, :name
  def self.all
    @@all
  end

  def initialize(name)
    @name=name
    @@all << self
  end

  def artist_name

    if self.artist != nil
      self.artist.name
    else
      nil
    end
  end

end
