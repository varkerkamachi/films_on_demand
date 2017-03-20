require 'spec_helper'

describe FilmRelation do
  it { should belong_to(:film) }

end
