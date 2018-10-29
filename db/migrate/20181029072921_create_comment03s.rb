class CreateComment03s < ActiveRecord::Migration[5.2]
  def change
    create_table :comment03s do |t|
      t.text :body
      t.string :picture
      t.integer :topic03_id

      t.timestamps
    end
  end
end
