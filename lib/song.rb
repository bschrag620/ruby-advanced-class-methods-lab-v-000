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
  end

  def self.create_by_name(name)
    self.new_by_name(name)
  end

  def self.find_by_name(name)
    @@all.each do |song|
      return song if song.name == name
    end
    false
  end

  def self.find_or_create_by_name(name)
    song = self.find_by_name(name)
    if !song
      song = self.create_by_name(name)
    end
    song
  end
  
  def save
    self.class.all << self
  end

end
