class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create #Class Constructor
    song = self.new
    self.all << song
    song
  end

  def self.new_by_name(song_title) #Class Constructor
    song = self.new
    song.name = song_title
    song
  end

  def self.create_by_name(song_title) #Class Constructor
    song = self.create
    song.name = song_title
    song
  end

  def self.find_by_name(song_title) #Class Finder
    result = self.all.detect {|song| song.name == title}
    result
  end
end
