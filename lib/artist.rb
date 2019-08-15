require "pry"

class Artist

  attr_accessor :songs, :name, :genres

  @@all = []

  def initialize
    @songs = []
    @genres = []
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
    self.genres << song.genre
    binding.pry
    song.genre.artists << self if song.genre && !song.genre.artists.include?(self)
  end

  def self.all
    @@all
  end

  def self.reset_artists
    @@all = []
  end

  def self.count
    @@all.count
  end


end
