# frozen_string_literal: true

class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    if Rails.env.development?
      connection.execute('PRAGMA defer_foreign_keys = ON')
      connection.execute('PRAGMA foreign_keys = OFF')
    end
    rename_column :festivals, :image_file_name, :imageok_file_name
    rename_column :festivals, :image_content_type, :imageok_content_type
    rename_column :festivals, :image_file_size, :imageok_file_size
    rename_column :festivals, :image_updated_at, :imageok_updated_at
    if Rails.env.development?
      connection.execute('PRAGMA defer_foreign_keys = ON')
      connection.execute('PRAGMA foreign_keys = OFF')
    end
  end
end
