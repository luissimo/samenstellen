class DoubleMattressOne < ApplicationRecord

  validates_length_of :age, in: 1..4
  validates_length_of :weight, in: 1..4
  validates_length_of :length, in: 1..4

  [:name, :gender, :age, :weight, :length, :sleep_position, :body_shape, :warm_sleeping,
   :neck_or_back_pain, :mattress_length, :mattress_width, :category, :comfort, :diseases, :chassis].each do |attribute|
    validates attribute, presence: true
  end

end
