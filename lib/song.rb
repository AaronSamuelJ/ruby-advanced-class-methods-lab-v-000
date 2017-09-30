class Song
  @@all = []
  def self.create
    song = Song.new
    @@all << self
    song
  end

end
