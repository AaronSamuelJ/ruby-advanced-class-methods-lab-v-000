class Song
  @@all = []
  def self.create
    song = Song.new
    self.all << self
    self
  end
  def self.all
    @@all
  end

end
