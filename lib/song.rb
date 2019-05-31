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
    result = self.all.detect {|song| song.name == song_title}
    result
  end

  def self.find_or_create_by_name(song_title)
    result = self.find_by_name(song_title)
    if result
      result
    else
      self.create_by_name(song_title)
    end
  end

  def self.alphabetical
    sorted = self.all.sort_by {|song| song.name}
    sorted
  end
end
