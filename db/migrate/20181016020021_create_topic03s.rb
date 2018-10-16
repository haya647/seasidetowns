class CreateTopic03s < ActiveRecord::Migration[5.2]
  def change
    create_table :topic03s do |t|
      t.string :title
      t.text :body
      t.string :picture

      t.timestamps
    end
  end
end
