class CreateJoinTableUserDrug < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :drugs do |t|
      t.index [:user_id, :drug_id]
      t.timestamps
    end
  end
end
