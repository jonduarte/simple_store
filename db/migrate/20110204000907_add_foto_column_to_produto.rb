class AddFotoColumnToProduto < ActiveRecord::Migration
  def self.up
    add_column :produtos, :foto_file_name, :string
    add_column :produtos, :foto_content_type, :string
    add_column :produtos, :foto_file_size, :integer
    add_column :produtos, :foto_updated_at, :datetime
  end

  def self.down
    remove_column :produtos, :foto_file_name
    remove_column :produtos, :foto_content_type
    remove_column :produtos, :foto_file_size
    remove_column :produtos, :foto_updated_at
  end
end

