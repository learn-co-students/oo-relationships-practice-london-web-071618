class Trainer

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_clients
    clients_trainers = Client.all.map{|client| client.trainer}
    clients_trainers.max_by {|i| clients_trainers.count(i)}
  end

end
