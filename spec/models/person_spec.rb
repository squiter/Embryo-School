require "spec_helper"

describe Person do
  let(:brunno) { Person.new name: "Brunno", surname: "dos Santos", email: "squiter85@gmail.com" }
  subject { brunno }

  it "must have a e-mail" do
    brunno.email = ""
    brunno.should_not be_valid
  end
  it "must have a name" do
    brunno.name = ""
    brunno.should_not be_valid
  end
  it "has a valid email" do
    brunno.should be_valid
    brunno.email = "teste"
    brunno.should_not be_valid
  end
end
