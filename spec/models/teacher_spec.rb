require 'spec_helper'

describe Teacher do
  subject(:teacher) { Teacher.new name: "Matz", email: "matz@ruby.com" }

  it { should be_valid }
  context "with subjects" do
    let(:ruby) { Subject.new name: "Ruby" }
    let(:small_talk) { Subject.new name: "Small Talk" }
    subject(:matz) { Teacher.new name: "Matz", email: "matz@ruby.com", subjects: [ruby,small_talk] }

    it { should be_valid }

    it "must be include Ruby and Small Talk" do
      matz.subjects.should include(ruby)
      matz.subjects.should include(small_talk)
    end

    it "must contains two subjects" do
      matz.subjects.length.should == 2
    end
  end
end
