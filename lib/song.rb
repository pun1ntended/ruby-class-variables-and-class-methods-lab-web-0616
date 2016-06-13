class Song
	@@count = 0
	@@genres = []
	@@artists = []
	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count +=1
		@@genres << genre
		@@artists << artist

	end
	def self.count
		@@count
	end
	def name
		@name
	end
	def artist
		@artist
	end
	def genre
		@genre
	end
	def self.artists
		@@artists.uniq
	end
	def self.genres
		@@genres.uniq
	end
	def self.genre_count
		genre_frequency= @@genres.each_with_object(Hash.new(0)) do |genre,frequency_hash|
  		frequency_hash[genre] += 1

		end
	end

	def self.artist_count
		artist_frequency= @@artists.each_with_object(Hash.new(0)) do |artist,frequency_hash|
		frequency_hash[artist] += 1

		end
	end

end
