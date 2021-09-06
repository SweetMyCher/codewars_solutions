# https://www.codewars.com/kata/576757b1df89ecf5bd00073b
def towerBuilder(n_floors)
  return ['*'] if n_floors == 1
  tower = []
  floors = (1..n_floors).to_a
  floors.each do |floor|
    empty_symbols = ''
    empty_symbols = ' ' * (floors.size - floor) if floor != floors.size
    if floor == 1
      tower << empty_symbols + ('*' * (floor)) + empty_symbols
    else
      tower << empty_symbols + ('*' * (floor + (floor - 1))) + empty_symbols
    end
  end
  
  tower
end