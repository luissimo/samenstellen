class Mattress < ApplicationRecord

  validates_length_of :age, in: 1..4
  validates_length_of :weight, in: 1..4
  validates_length_of :length, in: 1..4

end
