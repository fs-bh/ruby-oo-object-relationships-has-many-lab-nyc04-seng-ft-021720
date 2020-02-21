class Song
	attr_reader		
	attr_writer		
	attr_accessor	:name, :artist

	@@all = []

	def initialize(name)
		@@all.push(self)
		@name = name
	end

	def self.add_song_by_name(name, artist = nil)
		new_song = self.new(name)
		new_song.name = name
		new_song.artist = artist		
		nil
	end

	def artist_name
		self.artist ? self.artist.name : nil
		# self.artist.name ?: nil
	end

	def self.all
		@@all
	end

end