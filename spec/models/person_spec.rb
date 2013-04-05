require "spec_helper"

describe Person do

  context "#validations" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:name) }
    it { should allow_value("teste@teste.com").for(:email) }
    it { should_not allow_value("teste").for(:email) }
    it { should_not allow_value("teste@b").for(:email) }
  end

end
