class Artist
	attr_reader		:name
	attr_writer		
	attr_accessor	

	@@all = []

	def initialize(name)
		@name = name
		@@all.push(self)
	end

	def songs
		this_artists_songs = Song.all.select do |song|
			song.artist == self
		end
		this_artists_songs
	end

	def self.all
		@@all
	end

	def self.song_count
		Song.all.length
	end

	def add_song(song_instance)
		song_instance.artist = self
	end

	def add_song_by_name(name)
		new_song = Song.add_song_by_name(name, self)
	end

end