# https://www.codewars.com/kata/53dbd5315a3c69eed20002dd
def filter_list(l)
  l.select {|m| m.is_a? Integer}
end