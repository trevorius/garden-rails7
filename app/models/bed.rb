class Bed < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :bed_type, presence: true



end
