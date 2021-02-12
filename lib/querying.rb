def select_books_titles_and_years_in_first_series_order_by_year
  <<-SQL
    SELECT books.title, books.year 
    FROM books 
    WHERE books.series_id = 1 
    ORDER BY books.year
  SQL
end

def select_name_and_motto_of_char_with_longest_motto
  <<-SQL
    SELECT characters.name, characters.motto 
    FROM characters 
    ORDER BY characters.motto 
    LIMIT 1
  SQL
end


def select_value_and_count_of_most_prolific_species
  <<-SQL
    SELECT characters.species, 
    COUNT(characters.species) 
    AS count 
    FROM characters 
    GROUP BY characters.species 
    ORDER BY count DESC 
    LIMIT 1
  SQL
end

def select_name_and_series_subgenres_of_authors
  <<-SQL
    SELECT authors.name, subgenres.name
    FROM series
    JOIN authors ON series.author_id = authors.id
    JOIN subgenres ON series.subgenre_id = subgenres.id
    GROUP BY authors.name
  SQL
end

def select_series_title_with_most_human_characters
  <<-SQL
  SELECT series.title 
  FROM series 
  JOIN books 
  ON books.series_id = series.id 
  JOIN character_books 
  ON character_books.book_id = books.id 
  JOIN characters 
  ON character_books.character_id = characters.id 
  WHERE characters.species = 'human' 
  GROUP BY series.title 
  ORDER BY COUNT(*) 
  DESC LIMIT 1
  SQL
end

def select_character_names_and_number_of_books_they_are_in
  <<-SQL
    SELECT characters.name, COUNT(character_books.book_id)
    FROM characters
    JOIN character_books ON characters.id = character_books.character_id
    GROUP BY characters.id
    ORDER BY COUNT(character_books.book_id) DESC, characters.name ASC
  SQL
end
