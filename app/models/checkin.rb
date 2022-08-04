class Checkin < ApplicationRecord
  belongs_to :field
  belongs_to :group
  belongs_to :person
end
