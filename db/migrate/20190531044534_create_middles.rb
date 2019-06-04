class CreateMiddles < ActiveRecord::Migration[5.0]
  def change
    create_table :middles do |t|
      t.references :user, foreign_key: true
      t.string :mr
      t.string :surname
      t.string :Lname
      t.string :commonname
      t.string :Fname
      t.timestamps
    end
  end
end
