require 'spec_helper'

describe Student do
  let(:course) { Course.create custom_id: "Turma A" }
  let(:student) { Student.create name: "Brunno", email: "squiter85@gmail.com", course: course }
  subject { student }

  it { should be_valid }

  it "must be part of Turma A" do
    student.course.to_s.should == "Turma A"
  end
end
