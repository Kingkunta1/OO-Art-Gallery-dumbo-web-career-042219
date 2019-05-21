class Painting

  attr_reader :title, :price,:gallery,:artist

  @@all = []

  def initialize(title,price,artist,gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end


  def self.all
    @@all
  end

  def self.total_price

    self.all.price
    binding.pry
    # * `Painting.total_price`
    # * Returns an `integer` that is the total price of all paintings
  end




end
