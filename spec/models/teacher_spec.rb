require 'spec_helper'

describe Teacher do

  it { should have_many(:teaches) }
  it { should have_many(:courses) }
  it { should have_and_belong_to_many(:subjects) }

end
