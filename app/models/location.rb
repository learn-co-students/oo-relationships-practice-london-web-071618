class Location

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.least_clients
    client_locations = Client.all.map {|client| client.location}
    client_locations.min_by{|i| client_locations.count(i)}
  end

end
