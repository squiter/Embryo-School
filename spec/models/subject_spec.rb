# encoding: UTF-8
require 'spec_helper'

describe Subject do

  context "#validations" do
    it { should validate_presence_of(:name) }
  end

  context "#relationships" do
    it { should have_many(:assign_teachers) }
    it { should have_many(:courses) }
    it { should have_and_belong_to_many(:teachers) }
  end

end
