require 'spec_helper'

describe Course do
  subject(:course) { Course.new custom_id: "Turma A" }

  it { should be_valid }

  it "must return custom_id when call the class" do
    course.to_s.should == "Turma A"
  end


  context "with some students" do
    let(:brunno) { Student.new name: "Brunno", email: "brunno@brunno.me" }
    let(:paulo) { Student.new name: "Paulo", email: "paulo@brunno.me" }
    subject(:course) { Course.new custom_id: "Turma C", students: [brunno, paulo] }

    it { should be_valid }
    it "contains Brunno and Paulo" do
      course.students.should include(paulo)
      course.students.should include(brunno)
    end

    it "contains two students" do
      course.students.length.should == 2
    end
  end
end
