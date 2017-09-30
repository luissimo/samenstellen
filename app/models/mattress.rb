class Mattress < ApplicationRecord

# enum Format: { eenpersoons: 0, tweepersoons: 1 }

# validates_presence_of :name, :gender, :age, :email, :weight,
# 											:length, :sleep_position, :body_shape,
# 											:warm_sleeping, :diseases, :size, :format
  serialize :diseases

end
