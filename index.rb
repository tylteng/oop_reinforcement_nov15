class Location
attr_accessor :name

  def initialize(name)
    @name = name
  end

end


class Trip
attr_accessor :name, :location

  def initialize(name)
    @name = name
    @location = []
  end

  def travel_to(place)
    @location << place
  end

  def travel_log
    counter = 0
    puts 'Began trip.'
    @location.each_cons(2) do |x|
      puts "Travelled from #{x[0].name} to #{x[1].name}"
    end
    puts 'Ended trip.'
  end
end

toronto = Location.new("Toronto")
ottawa = Location.new("Ottawa")
montreal = Location.new("Montreal")
quebec_city = Location.new("Quebec City")
halifax = Location.new("Halifax")
st_johns = Location.new("St. John's")

summer17 = Trip.new("Summer 2017")
summer17.travel_to(toronto)
summer17.travel_to(ottawa)
summer17.travel_to(montreal)
summer17.travel_to(quebec_city)
summer17.travel_to(halifax)
summer17.travel_to(st_johns)
summer17.travel_log
