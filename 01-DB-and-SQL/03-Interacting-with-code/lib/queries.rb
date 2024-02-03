# Require
require "sqlite3"

DB = SQLite3::Database.new("lib/db/jukebox.sqlite")







# Logic of the code
def artist_count(db)
  # TODO: use `db` to execute an SQL query against the database.
  # Should return an integer of the number of artists.

  result = db.execute <<~SQL
  SELECT COUNT(name)
  FROM artists

  SQL

  return result.first.first


end

def number_of_rows(db, table_name)
  # TODO: count number of rows in table table_name.
  # Should return an integer of the number of rows.

  result = db.execute <<~SQL
  SELECT COUNT(name)
  FROM #{table_name};
  SQL

  return result.first.first
end

def sorted_artists(db)
  # TODO: return array of artists' names sorted alphabetically.
  # Should return an array of strings sorted alphabetically.

  result = db.execute  <<~SQL
  SELECT name
  FROM artists
  ORDER BY name;
  SQL

  return result.flatten
end

def love_tracks(db)
  # TODO: return array of love songs' names.
  # Should return an array of strings (track names).

  result = db.execute <<~SQL
  SELECT name
  FROM tracks
  WHERE name like "%love%"
  SQL

  return result.flatten
end

def long_tracks(db, min_length)
  # TODO: return an array of tracks' names verifying: duration > min_length (minutes) sorted by length (ascending).
  # Should return an array of strings.

  result3 =  db.execute <<~SQL
  SELECT name
  FROM tracks
  WHERE milliseconds >= "{#min_length * 60000}"
  SQL

  return result3
end

def albums_per_artist(db)
  # TODO: return an array of arrays, each containing the artist's name and the number of albums they have
end

# Call to the functions

# p artist_count(DB)
# p number_of_rows(DB, name = "genres")
# p sorted_artists(DB)
# p love_tracks(DB, )
p long_tracks(DB, 300000)
