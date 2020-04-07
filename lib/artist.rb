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
    Song.all.select {|song| song.artist == self}
  end 
  
  def genre 
    songs.map(&:genre)
  end 
end 