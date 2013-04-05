require 'spec_helper'

describe Course do
  subject(:course) { build(:course, custom_id: "Turma A") }

  it { should be_valid }

  context "#relationships" do
    it { should have_many(:students) }
    it { should have_many(:teachers) }
    it { should have_many(:subjects) }
  end

  context "#validations" do
    it { should validate_presence_of(:custom_id) }
  end

  it "must return custom_id when call the class" do
    course.to_s.should == "Turma A"
  end


end
