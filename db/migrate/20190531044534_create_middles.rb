class CreateMiddles < ActiveRecord::Migration[5.0]
  def change
    create_table :middles do |t|
      t.references :mr, foreign_key: true
      t.references :surname, foreign_key: true
      t.string :Lname
      t.references :commonname, foreign_key: true
      t.string :Fname
      t.timestamps
    end
  end
end
