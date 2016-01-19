def is_prime?(n)
  return false if ((n == 1) || (n == 0))

  for i in 2..(n-1)
    return false if (n%i == 0)
  end
  true
end

100.times{ |i| puts i if is_prime?(i) }
