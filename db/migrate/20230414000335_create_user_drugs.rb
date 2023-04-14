class CreateUserDrugs < ActiveRecord::Migration[7.0]
  def change
    create_table :user_drugs do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :drug, null: false, foreign_key: true
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
