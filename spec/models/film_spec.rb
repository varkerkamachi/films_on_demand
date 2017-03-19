require 'spec_helper'

describe Film do
  it { should have_many(:film_ratings) }
  it { should have_many(:film_relations) }

  describe 'Factory test' do
    it 'has a valid factory ' do
      expect(FactoryGirl.create(:film, title: 'Mystery Theater')).to be_valid
    end
  end

  context 'instance methods' do
    describe '#related_films' do
      before :each do
        @f = FactoryGirl.create(:film, title: 'Crazy week', year: 1908)
        @rf = FactoryGirl.create(:film, title: 'Crazy day', year: 1988)
        @film_relation = FactoryGirl.create(:film_relation, film: @f, related_film: @rf.id)
      end 
      it 'returns an array' do
        expect(@f.related_films.class).to eq(Array)
      end
      it 'returns all related films' do
        expect(@f.related_films).to eq([@rf])
      end
      it 'accepts an attribute argument' do
        expect(@f.related_films('id')).to be_true
      end
      it 'returns only the attribute of the passed argument' do
        expect(@f.related_films('id')).to eq [@rf.id]
      end
    end
    describe '#average_rating' do
      before :each do
        @f = FactoryGirl.create(:film, title: 'Crazy week', year: 1908)
        6.times do |n|
          FactoryGirl.create(:film_rating, title: 'Wild one', film: @f, stars: n+1)
        end
      end 
      it 'returns a float' do
        expect(@f.average_rating.class).to eq(Float)
      end
      it 'returns the average of all ratings' do
        expect(@f.average_rating).to eq(3)
      end
    end
  end

end
