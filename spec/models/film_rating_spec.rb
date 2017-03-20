require 'spec_helper'

describe FilmRating do
  it { should belong_to(:user) }
  it { should belong_to(:film) }

  let(:film) { FactoryGirl.create(:film, title: 'Secret Staircase') }
  let(:rated_film) { FactoryGirl.create(:film, title: 'Superman 37') }
  let(:another_rated_film) { FactoryGirl.create(:film, title: 'Why Cats Meow') }
  let(:rating1) { FactoryGirl.create(:film_rating, film: rated_film, user_id: 1, title: 'Wickedly dumb', stars: 1) }
  let(:rating2) { FactoryGirl.create(:film_rating, film: rated_film, user_id: 2, title: 'Just unreal', stars: 4) }
  let(:rating3) { FactoryGirl.create(:film_rating, film: another_rated_film, user_id: 3, title: 'Never thought I would like this, but..', stars: 3) }


  context 'Scopes' do
    describe '#for_film' do
      it 'returns all ratings for a specific film' do
        expect(FilmRating.for_film(rated_film)).to eq [rating1, rating2]
      end
      it 'does not return ratings not associated with a specific film' do
        expect(FilmRating.for_film(rated_film)).not_to include rating3
      end
      it 'returns an empty array if a specific film has no ratings' do
        expect(FilmRating.for_film(film)).to eq []
      end
    end
  end
end
