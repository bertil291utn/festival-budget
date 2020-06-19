class CreateFestivals < ActiveRecord::Migration[5.2]
  def change
    create_table :festivals do |t|
      t.string :name
      t.decimal :budget
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
