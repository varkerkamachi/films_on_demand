require 'spec_helper'

describe Film do
  it { should have_many(:film_ratings) }
  it { should have_many(:film_relations) }

  describe 'Factory test' do
    it 'has a valid factory ' do
      expect(FactoryGirl.create(:film, title: 'Mystery Theater')).to be_valid
    end
  end
end
