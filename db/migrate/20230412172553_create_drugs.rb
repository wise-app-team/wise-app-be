class CreateDrugs < ActiveRecord::Migration[7.0]
  def change
    create_table :drugs do |t|
      t.string :name
			t.string :synonym

      t.timestamps
    end
  end
end
