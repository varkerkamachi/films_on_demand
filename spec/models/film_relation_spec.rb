require 'spec_helper'

describe FilmRelation do
  it { should belong_to(:film) }
  it { should have_many(:film_relations) }

end
