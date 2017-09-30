require 'pry'
class Song
  @@all = []
  attr_accessor :name
  def self.create
    song = Song.new
    @@all << song
    song
  end
  def self.all
    @@all
  end
  def self.new_by_name(name)
    song = Song.new
    song.name = name
    song
  end
  def self.create_by_name(name)
    song = Song.new 
    song.name = name 
    self.all << song 
    song
  end
end
