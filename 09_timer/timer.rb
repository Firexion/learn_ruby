class Timer

  def seconds
    @seconds ||= 0
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string
    hours = @seconds / 3600
    minutes = @seconds / 60 - hours * 60
    seconds = @seconds % 60
    "#{padded hours}:#{padded minutes}:#{padded seconds}"
  end

  def padded(time)
    time = time.to_s
    time = "0#{time}" if time.length == 1
    time
  end
end