
class Post
	attr_reader		
	attr_writer		
	attr_accessor	:title, :author

	@@all = []

	def initialize(title)
		@title = title
		@@all.push(self)
	end

	def self.add_post_by_title(title, author = nil)
		new_post = self.new(title)
		new_post.title = title
		new_post.author = author
		nil
	end

	def author_name
		# self.author ? self.author.name : nil
		# self.author&.name 
		self.author&.name || nil
	end

	def self.all
		@@all
	end	

end