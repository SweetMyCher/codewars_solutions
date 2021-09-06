# https://www.codewars.com/kata/53368a47e38700bd8300030d
# Format a string of names like 'Bart, Lisa & Maggie'.
def list names
  return '' if names.empty?
  return names.first[:name] if names.size == 1
  return names.map {|nam_hash| nam_hash[:name] }.join(' & ') if names.size == 2
  names[0..-2].map {|nam_hash| nam_hash[:name] }.join(', ') + " & #{names.last[:name]}"
end