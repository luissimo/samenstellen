class DoubleMattressTwo < ApplicationRecord

  validates_length_of :age, in: 1..4
  validates_length_of :weight, in: 1..4
  validates_length_of :length, in: 1..4

  validates_length_of :age2, in: 1..4
  validates_length_of :weight2, in: 1..4
  validates_length_of :length2, in: 1..4


  [:name, :name2, :gender, :gender2, :age, :age2, :weight, :weight2, :length, :length2, :sleep_position, :sleep_position2,
   :body_shape, :body_shape2, :warm_sleeping, :warm_sleeping2, :neck_or_back_pain, :neck_or_back_pain2, :mattress_length, :mattress_width, :comfort, :comfort2, :chassis, :separation].each do |attribute|
    validates attribute, presence: true
  end

end
