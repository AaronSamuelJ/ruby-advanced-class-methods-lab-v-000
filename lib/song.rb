require 'pry'
class Song
  @@all = []
  attr_accessor :name, :artist_name
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
  def self.find_by_name(name)
    self.all.find do |song|
      song.name == name
    end
  end
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end
  def self.alphabetical
    self.all.sort_by do |song|
      song.name
    end
  end
  def self.new_from_filename(filename)
    song = Song.new
    arr = filename.split(" - ")[1]
    song.artist_name = filename.split(" - ")[0]
    song.name = arr.split(".")[0]
    song
  end
  def self.create_from_filename(filename)
    self.all << self.new_from_filename(filename)
  end
  def self.destroy_all
    self.all.clear
  end
end
