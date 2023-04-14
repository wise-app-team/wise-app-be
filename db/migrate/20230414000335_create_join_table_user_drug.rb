class CreateJoinTableUserDrug < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :drugs do |t|
      t.index [:user_id, :drug_id]
      t.integer :frequency
      t.time :dose1
      t.time :dose2
      t.time :dose3
      t.boolean :prn
      t.text :notes
      
      t.timestamps
    end
  end
end
