require 'pry'

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist = self.all.detect { |artist| artist.name = name }
    if artist == nil
      artist = Artist.new(name)
    else
      artist
    end
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    #binding.pry
    Song.all.select { |song| song.artist == self }
  end

  def print_songs
    binding.pry
    puts songs
  end

end
