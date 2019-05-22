require 'pry'
class Author

  attr_accessor :name, :posts
  @@all= []

  def initialize(name)
    @name = name
    @posts=[]
    @@all << self
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    newpost = Post.new(title)
    newpost.author = self
    @posts << newpost
  end

  def self.all
    @@all
  end

  def self.post_count
    allpostcount=0
    self.all.each do |author|

      allpostcount += author.posts.length

    end
    allpostcount

  end


end
