Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
   @movie = Movie.create!(movie)
  end
end

Then /the director of "(.*)" should be "(.*)"$/ do |title, director|
  assert Movie.where("title = \"#{title}\"").first.director == director
end
