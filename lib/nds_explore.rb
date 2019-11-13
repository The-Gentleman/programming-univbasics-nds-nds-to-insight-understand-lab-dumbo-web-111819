$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
nds =   rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
pp  
end
# Spielbergs movies are in the first index, so:
# directors_database[0]  = {:name=>"Stephen Spielberg", :movies=>[{:title=>"Jaws", :studio=>"Universal", :worldwide_gross=>260000000, :release_year=>1975}, {:title=>"Close Encounters of the Third Kind", :studio=>"Columbia", :worldwide_gross=>135189114, :release_year=>1977}, {:title=>"Raiders of the Lost Ark", :studio=>"Paramount", :worldwide_gross=>248159971, :release_year=>1981}, {:title=>"E.T. the Extra-terrestrial", :studio=>"Universal", :worldwide_gross=>435110554, :release_year=>1982}, {:title=>"Schindler's List", :studio=>"Universal", :worldwide_gross=>96898818, :release_year=>1993}, {:title=>"Lincoln", :studio=>"Buena Vista", :worldwide_gross=>182207973, :release_year=>2012}]}

# starts in a hash. :name is S Spielberg
# :movie is a key that holds an array. 
# in that array, it holds a hash that has three values: title, studio, and worldwide gross. 
# i need the TITLES from every hash in the MOVIES array 
#  directors_database[0] = movies, titles, studios, grosses, and release years
# directors_database[0][:movies] = titles, studios, grosses, and release years
# directors_database[0][:movies][0] = titles, studios, grosses, and release years for the first array 
# directors_database[0][:movies][0][:title] = value for key :title 

#directors_database[0][:movies][0][:title]
#                               ^ THIS IS WHAT NEEDS TO CHANGE WHEN I ITERATE 

def print_first_directors_movie_titles
row_value = 0 
movies_index = directors_database[0][:movies]
title_idx = directors_database[0][:movies][0]
title = directors_database[0][:movies][0][:title]

while row_value < directors_database.count do 
  while row_value < movies_index.count do 
    while row_value < movies_index.count do 
     puts #{title \n}
        
end
row_value += 1 
end 
title_idx += 1 
end 
end
