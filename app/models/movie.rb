class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def self.similar_by_director(id)
    movie = self.find(id)
    director = movie.director
    similar = self.where("director = \"#{director}\"")
  end
end
