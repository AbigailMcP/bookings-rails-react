FactoryBot.define do
  factory :booking do
    space
    description { 'A description' }
    start_date Date.today
    end_date Date.today + 1
  end
end
