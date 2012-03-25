describe Movie do
  fixtures :movies
  it 'should fetch all films related by director to the present one' do
    movie1 = movies(:ridley_scott_1)
    puts movie1.id.to_s()
    Movie.similar_by_director(movie1.id).should == [movies(:ridley_scott_1), movies(:ridley_scott_2)]
  end
end
