class RemoveImageFromFestivals < ActiveRecord::Migration[5.2]
  def change
    connection.execute('PRAGMA defer_foreign_keys = ON')
    connection.execute('PRAGMA foreign_keys = OFF')
    remove_column :festivals, :image, :string
    connection.execute('PRAGMA defer_foreign_keys = ON')
    connection.execute('PRAGMA foreign_keys = OFF')
  end
end
