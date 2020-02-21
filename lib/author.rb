class Author
	attr_reader		
	attr_writer		
	attr_accessor	:name

	@@all = []

	def initialize(name)
		@name = name
		@@all.push(self)
	end

	def self.all
		@@all
	end

	def posts
		this_authors_posts = Post.all.select do |post|
			post.author == self
		end
		this_authors_posts
	end

	def add_post(post_instance)
		post_instance.author = self
	end	

	def add_post_by_title(title)
		new_post = Post.add_post_by_title(title, self)
	end	

	def self.post_count
		Post.all.length
	end

end