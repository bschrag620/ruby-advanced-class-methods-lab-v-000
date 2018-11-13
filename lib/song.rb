class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def self.create
    @@all << self.new
    @@all[-1]
  end

  def self.new_by_name(name)
    new_song = self.create
    new_song.name = name
    new_song

  def save
    self.class.all << self
  end

end
