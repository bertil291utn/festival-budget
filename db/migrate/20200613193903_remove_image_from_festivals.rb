# frozen_string_literal: true

class RemoveImageFromFestivals < ActiveRecord::Migration[5.2]
  def change
    if Rails.env.development?
      connection.execute('PRAGMA defer_foreign_keys = ON')
      connection.execute('PRAGMA foreign_keys = OFF')
    end
    remove_column :festivals, :image, :string
    if Rails.env.development?
      connection.execute('PRAGMA defer_foreign_keys = ON')
      connection.execute('PRAGMA foreign_keys = OFF')
    end
  end
end
