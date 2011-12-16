class AddDetailsToCorporations < ActiveRecord::Migration
  def self.up
  	add_column :corporations, :supports_sopa, :boolean
  	add_column :corporations, :description, :text
  end

  def self.down
  	remove_column :corporations, :supports_sopa
  	remove_column :corporations, :description
  end
end
