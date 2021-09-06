# https://www.codewars.com/kata/525c65e51bf619685c000059
def cakes(recipe, available)
    ing = []
    products = recipe.keys
    available_products = available.keys
    
    products.each do |product|
      return 0 unless available_products.include? product
    end
    
  #   puts products.join(' ')
    recipe.each do |product, product_count|
      ing << (available[product] / product_count)
    end
    
    ing.min
end