FactoryBot.define do
  factory :baptism do
    baptism_date { '2022-07-19' }
    field_registration { 'MyString' }
    age_big_than_ten { false }
    has_group { false }
    shirt_size { 1 }
    baptism_pref_field { 'MyString' }
    comment { 'MyText' }
    person { nil }
  end
end
