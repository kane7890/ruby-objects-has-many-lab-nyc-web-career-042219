class Post
  @@all=[]
  attr_accessor :author, :title
  def self.all
    @@all
  end

  def initialize(title)
    @title=title
    @@all << self
  end

  def author_name

    if self.author != nil
      self.author.name
    else
      nil
    end
  end


end
