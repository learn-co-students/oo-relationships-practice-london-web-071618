require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end


#locations
park = Location.new('park')
hill = Location.new('hill')
pool = Location.new('pool')


#trainers
trainer1 = Trainer.new('trainer1')
trainer2 = Trainer.new('trainer2')
trainer3 = Trainer.new('trainer3')


#clients
sarah = Client.new('sarah', trainer1, park)
maduri = Client.new('maduri', trainer2, hill)
ritz = Client.new('ritz', trainer3, pool)
casey = Client.new('casey', trainer3, pool)
brooke = Client.new('brooke', trainer3, hill)



pry.start
