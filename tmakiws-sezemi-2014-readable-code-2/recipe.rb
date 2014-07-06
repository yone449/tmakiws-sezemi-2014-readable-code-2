# -*- coding: utf-8 -*-

def add_id(recipe, id)
  return "#{id}: #{recipe}"
end  

def output_recipe(recipe_file, encoding="utf-8")
  recipe = File.open("recipe-data.txt", "r:#{encoding}")
  recipe.each_with_index do |line, id|
    line = add_id(line, id)
    print line
  end
end

filename, encoding = "recipe-data.txt", "utf-8"
output_recipe(filename, encoding)
