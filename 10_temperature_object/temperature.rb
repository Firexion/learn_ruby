class Temperature
  require_relative '../01_temperature/temperature.rb'
  def initialize(options)
    @f = options[:f]
    @c = options[:c]
  end

  def in_fahrenheit
    @f ||= ctof(@c)
  end

  def in_celsius
    @c ||= ftoc(@f)
  end

  def Temperature.from_celsius(c)
    Temperature.new({c: c})
  end

  def Temperature.from_fahrenheit(f)
    Temperature.new({f: f})
  end
end

class Celsius < Temperature
  def initialize(c)
    super({c: c})
  end
end


class Fahrenheit < Temperature
  def initialize(f)
    super({f: f})
  end
end
