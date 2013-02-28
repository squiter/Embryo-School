require 'spec_helper'

describe Teacher do
  subject(:teacher) { Teacher.new name: "Matz", email: "matz@ruby.com" }

  it { should be_valid }
end
