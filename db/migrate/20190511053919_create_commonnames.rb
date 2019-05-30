class CreateCommonnames < ActiveRecord::Migration[5.0]
  def change
    create_table :commonnames do |t|
      t.string :commonname
      
      t.timestamps
    end
  end
end
