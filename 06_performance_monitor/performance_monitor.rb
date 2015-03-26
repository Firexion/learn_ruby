def measure(times = 1)
  average = []
	(0...times).each do      
    start = Time.now
    yield
    finish = Time.now
    average.push(finish - start)
  end
  
  average.inject(0){ |sum, x| sum + x } / times
end