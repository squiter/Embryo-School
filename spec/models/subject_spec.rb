# encoding: UTF-8
require 'spec_helper'

describe Subject do
  subject { Subject.new name: "Matemática" }

  it { should be_valid }

  context "with teachers" do
    let(:matz) { Teacher.new name: "Matz", email: "matz@ruby.com" }
    let(:valim) { Teacher.new name: "José", email: "josevalim@ptech.com" }
    subject { Subject.new name: "Ruby", teachers: [valim,matz] }

    it { should be_valid }

    it "must be include Matz and José Valim" do
      subject.teachers.should include(valim)
      subject.teachers.should include(matz)
    end

    it "must contains two teachers" do
      subject.teachers.length.should == 2
    end
  end
end
