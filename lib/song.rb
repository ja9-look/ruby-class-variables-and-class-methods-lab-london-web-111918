class Song 
  
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@hash_of_genres = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << self.genre
    @@artists << self.artist
  end
  
  def self.count
   @@count
  end
  
  def self.artists
    @@artists.uniq!
  end
  
  def self.genres
    @@genres.uniq!
  end
  
  def self.genre_count
    if @@hash_of_genres.has_key?(@genre)
    @@hash_of_genres[genre] += 1  
    else
    @@hash_of_genres[genre] = 1
  end
    @@hash_of_genres
  end
  
end