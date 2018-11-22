class Song 
  
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@hash_of_genres = {}
  @@hash_of_artists = {}
  
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
    @@genres.each {|genre| 
    if @@hash_of_genres.has_key?(genre)
    @@hash_of_genres[genre] += 1
    else
    @@hash_of_genres[genre] = 1
    end
    }
    @@hash_of_genres
  end
  
  def self.artist_count
    @@artists.each {|artist|
    if @@hash_of_artists.has_key?(artist)
    @@hash_of_artists[artist] += 1 
    else
    @@hash_of_artists[artist] = 1
    end
    }
  end
  @@hash_of_artists
end