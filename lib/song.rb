class Song

  attr_accessor :artist, :name, :genre

  def genre=(genre)
    @genre = genre
    genre.songs << self
  end


end
