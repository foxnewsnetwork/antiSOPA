class AddIndexToSubstitution < ActiveRecord::Migration
  def self.up
  	add_index :substitutions, [ :original_id, :alternative_id], :unique => true
  	add_index :contacts, :corporation_id
  end

  def self.down
  	remove_index :substitutions, [:original_id, :alternative_id]
  	remove_index :contacts, :corporation_id
  end
end
