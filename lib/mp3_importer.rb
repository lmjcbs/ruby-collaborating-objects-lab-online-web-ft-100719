require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir["#{@path}/**/*.mp3"].map { |filename| File.basename(filename) }
  end

  def import
    files.each do |filename|

    end
    Song.new_by_filename(some_filename)
  end

end
