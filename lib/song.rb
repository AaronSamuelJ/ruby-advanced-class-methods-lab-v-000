class Song
  @@all = []
  def self.create
    song = Song.new
    @@all << song
    song
  end
  def self.all
    @@all
  end

end
