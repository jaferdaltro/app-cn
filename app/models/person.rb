class Person < ApplicationRecord
  belongs_to :field, optional: true

  enum marital_status: {
    single: 1,
    married: 2,
    common_law: 3,
    dating: 4,
    divorced: 5,
    widower: 6
   }
end
