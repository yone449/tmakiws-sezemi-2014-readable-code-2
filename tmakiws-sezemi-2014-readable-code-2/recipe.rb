# -*- coding: utf-8 -*-

def output_recipe(recipe_file, encoding)
  recipe = File.open("recipe-data.txt", "r:#{encoding}")
  recipe.each do |line|
    print line
  end
end

filename, encoding = "recipe-data.txt", "utf-8"

output_recipe(filename, encoding)

