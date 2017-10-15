class CreateDoubleMattressTwos < ActiveRecord::Migration[5.1]
  def change
    create_table :double_mattress_twos do |t|
      t.string :name
      t.string :name2
      t.string :gender
      t.string :gender2
      t.integer :age
      t.integer :age2
      t.string :email
      t.string :weight
      t.string :weight2
      t.integer :length
      t.integer :length2
      t.string :sleep_position
      t.string :sleep_position2
      t.string :body_shape
      t.string :body_shape2
      t.string :warm_sleeping
      t.string :warm_sleeping2
      t.string :neck_or_back_pain
      t.string :neck_or_back_pain2
      t.string :session_id
      t.string :mattress_length
      t.string :mattress_width
      t.string :category
      t.string :comfort
      t.string :comfort2
      t.string :diseases
      t.string :diseases2

      t.timestamps
    end
  end
end
