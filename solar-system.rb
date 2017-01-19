class System
  attr_reader :bodies
  def initialize(bodies = [])
    @bodies = bodies
  end
  def add(body)
    @bodies.push(body)
  end
  def total_mass
    total_mass = 0
    bodies.each do |body|
      total_mass += body.mass
    end
  end
end
class Body
  attr_reader :name, :mass
  def initialize(name, mass)
    @name = name
    @mass = mass
  end
end
class Planet < Body
  attr_reader :day, :year
  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end
end
class Star < Body
  attr_reader :type
  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end
end
class Moon < Body
  attr_reader :month, :planet
  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end
end
milky_way = System.new
sun = Star.new("Sun", 40, "G-type")
earth = Planet.new("Earth", 2, 24, 365)
moon = Moon.new("Moon", 1, 28, "Earth")
milky_way.add(sun)
milky_way.add(earth)
milky_way.add(moon)
