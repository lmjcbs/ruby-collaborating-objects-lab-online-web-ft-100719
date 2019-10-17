class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @all << self
  end

  def self.all
    Artist.all
  end

  def self.new_by_filename(filename)
    artist = filename.split(' - ')
  end

end
