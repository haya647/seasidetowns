class CreateComment04s < ActiveRecord::Migration[5.2]
  def change
    create_table :comment04s do |t|
      t.text :body
      t.string :picture
      t.integer :topic04_id

      t.timestamps
    end
  end
end
