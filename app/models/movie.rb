class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def self.similar_by_director(id)
    movie = self.find(id)
    if movie.director.length > 0
      director = movie.director
      similar = self.where("director = \"#{director}\"")
    else
      similar = []
    end
  end
end
