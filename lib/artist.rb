class Artist 
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def new_song(name, genre) 
    new_song = Song.new(name, genre)
    self << new_song 
  end 
  
  def songs 
    songs.all.select do |song|
      self.song 
    end 
  end 
  
  def genre 
    genre.all.select do |song| 
      self.song(genre)
    end 
  end 
end 