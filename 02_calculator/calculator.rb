def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(arr)
	return 0 if arr.empty?
	arr.inject { |x, y| x + y  }
end

def multiply(x, *y)
	y.inject(x) { |a, b| a * b }
end

def power(x, y)
 x ** y
end

def factorial(x)
	if x == 0 or x == 1
		return 1
	else
		return x * factorial(x-1)
	end
end