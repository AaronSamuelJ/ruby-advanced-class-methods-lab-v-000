class Song
  @@all = []
  def self.create
    song = Song.new
    self.all << song
    song
  end
  def self.all
    @@all
  end

end
