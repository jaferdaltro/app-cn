FactoryBot.define do
  factory :person do
    name { 'MyString' }
    email { 'MyString' }
    cell_phone { 'MyString' }
    phone { 'MyString' }
    address { nil }
    gender { 1 }
    marital_status { 1 }
    profession { 'MyString' }
    group { nil }
    field { nil }
  end
end
