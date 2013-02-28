# encoding: UTF-8
require 'spec_helper'

describe Subject do
  subject { Subject.new name: "Matemática" }

  it { should be_valid }
end
