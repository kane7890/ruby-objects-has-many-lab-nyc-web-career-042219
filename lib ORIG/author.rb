require 'pry'
class Author

  attr_accessor :name
  attr_reader :posts

  @@all=[]

def initialize(name)
     @name=name
     @posts=[]
     @@all << self
 end



def add_post(post)
    post.author = self
    @posts << post
end

def add_post_by_title(posttitle)
  newpost=Post.new(posttitle)
  newpost.author = self
  @posts << newpost
end

# def kaneposts
# #   binding.pry
#     @posts
#     return (@posts)
# end

def self.post_count
    postcount = 0
    @@all.each do |author|
      postcount += author.posts.length
      # binding.pry
    end
    postcount
  end




end
