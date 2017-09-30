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
    song.name
  end
end
