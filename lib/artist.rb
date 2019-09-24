class Artist
  @@all = []
  attr_accessor :name, :songs
  
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all 
  end 
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    @songs << song 
  end
  
  def self.find_or_create_by_name(name)
    unless @@all.find { |artist| artist.name == name }
    Artist.new(name)
    else
    @@all.find { |artist| artist.name == name}
    end
  end
  
  # def print_songs
  #   son

  
  
  
end