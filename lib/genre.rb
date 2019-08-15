class Genre

  attr_accessor :artists, :songs, :name

  @@all = []

  def initialize
    @name = name
    @songs = []
    @artists = []
    @@all << self
  end

  def artists=(artist)
    genre.artists << self
  end


  def self.all
    @@all
  end

  def self.reset_genres
    @@all = []
  end

  def self.count
    @@all.count
  end


end
