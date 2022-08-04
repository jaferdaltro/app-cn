class Person < ApplicationRecord
  belongs_to :address
  belongs_to :group
  belongs_to :field
end
