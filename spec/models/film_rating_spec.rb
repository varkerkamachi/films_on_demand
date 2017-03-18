require 'spec_helper'

describe FilmRating do
  it { should belong_to(:user) }
  it { should belong_to(:film) }
end
