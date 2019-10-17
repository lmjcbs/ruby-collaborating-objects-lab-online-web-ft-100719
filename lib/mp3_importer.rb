require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    binding.pry
    Dir[@path]
  end

  def import
    Song.new_by_filename(some_filename)
  end

end
