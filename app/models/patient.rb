class Patient < ApplicationRecord
  validates_presence_of :first_name, :middle_name, :mrn
  has_many :encounter
end
