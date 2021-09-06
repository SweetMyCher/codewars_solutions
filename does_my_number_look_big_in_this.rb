# https://www.codewars.com/kata/5287e858c6b5a9678200083c
def narcissistic?(value)
  value_nums = value.to_s.split('')
  narc = value_nums.map {|v| v.to_i**value_nums.size}.sum
  narc == value
end