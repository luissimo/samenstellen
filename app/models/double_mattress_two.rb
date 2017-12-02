class DoubleMattressTwo < ApplicationRecord

  validates_length_of :age, in: 1..4
  validates_length_of :weight, in: 1..4
  validates_length_of :length, in: 1..4

  validates_length_of :age2, in: 1..4
  validates_length_of :weight2, in: 1..4
  validates_length_of :length2, in: 1..4

end
