require 'spec_helper'
describe MoviesController do
  describe 'similar movies' do
    before :each do
      @fake_results = [mock('Movie'), mock('Movie')]
      @fake_movie = mock('Movie')
      @fake_movie.stub(:title => 'the film')
    end
    it 'should call the model method that selects similar movies by id' do
      Movie.should_receive(:find).and_return(@fake_movie)
      Movie.should_receive(:similar_by_director).with(1).and_return(@fake_results)
      post :similar, {:id => "1"}
    end
    describe 'after valid search' do
      before :each do
        Movie.should_receive(:find).and_return(@fake_movie)
        Movie.should_receive(:similar_by_director).with(1).and_return(@fake_results)
        post :similar, {:id => "1"}
      end
      it 'should select the similar movies results template' do
        response.should render_template('similar')
      end
      it 'should make the similar movies results available to the template' do
        assigns(:movies).should == @fake_results
      end
    end
  end
end
