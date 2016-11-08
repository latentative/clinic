class Encounter < ApplicationRecord
  validates_presence_of :visit_number, :admitted_at
  belongs_to :patient

end
