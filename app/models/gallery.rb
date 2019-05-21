class Gallery

  attr_reader :name,:city,:gallery,:artist,:title,:price

      @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
    # * `Gallery.all`
    #   * Returns an `array` of all the galleries
  end

  def paintings
    Painting.all.select do |painting|
  #   * Returns an `array` of all paintings in a gallery
      painting.gallery == self
    end
  end

  def paintings_in_gallery
    self.paintings
    # binding.pry
  end

  def artists
    paintings_in_gallery.map do |painting|
  # * Returns an `array` of all artists that have a
  # ? painting in a gallery
  painting.artist
    end
  end

  def artist_names
# * Returns an `array` of the names of all artists that have a painting in a gallery
    self.artists.map do |painting|
      painting.name
    end

  end

  def most_expensive_painting
# * Returns an `instance` of the most expensive painting in a gallery
  end



end
