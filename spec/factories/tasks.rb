FactoryBot.define do
  factory :task do
    name { 'テストを書く' }
    description { 'Factorybotで作りました'}
    user
  end
end