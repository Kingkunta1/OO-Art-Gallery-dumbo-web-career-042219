class Artist

  attr_reader :name, :years_experience,:gallery,:artist,:title,:price

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
  # * Returns an `array` all the paintings by an artist
      painting.artist == self
    end
  end

  def paintings_by_artist
    self.paintings
  end

  def galleries
    paintings_by_artist.map do |painting|
  # * Returns an `array` of all the galleries that an artist has paintings in
    painting.gallery
    end
  end

  def cities
    paintings_by_artist.map do |painting|
      # binding.pry
  #   * `Artist#cities`
  # * Return an `array` of all cities that an artist has paintings in
    painting.gallery.city
    end
  end

  def self.total_experience
        self.all.map do |artists|
    #   * Returns an `integer` that is the total years of experience of all artists

      end
  end

  def self.most_prolific
    self.all.select do |artist|
    #   * Returns an `instance` of the artist with the highest amount of paintings per year of experience.
  end
end

  def create_painting(title,price,gallery)
    # Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artis
  Painting.new(title,price,self,gallery)
  end




end
