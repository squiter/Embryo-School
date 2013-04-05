FactoryGirl.define do
  factory :course do
    sequence(:custom_id) do |n|
      "Turma_#{n}"
    end
  end
end
