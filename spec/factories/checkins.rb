FactoryBot.define do
  factory :checkin do
    baptized { false }
    baptism { '2022-07-19' }
    field { nil }
    want_serve { false }
    ministry_name { 'MyString' }
    group { nil }
    obsevation { 'MyText' }
    person { nil }
  end
end
