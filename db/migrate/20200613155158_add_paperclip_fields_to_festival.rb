class AddPaperclipFieldsToFestival < ActiveRecord::Migration[5.2]
  def change
    add_column :festivals, :image_file_name, :string
    add_column :festivals, :image_content_type, :string
    add_column :festivals, :image_file_size, :integer
    add_column :festivals, :image_updated_at, :datetime
  end
end
