class CreateSubstitutions < ActiveRecord::Migration
  def self.up
    create_table :substitutions do |t|
      t.integer :original_id
      t.integer :alternative_id

      t.timestamps
    end
  end

  def self.down
    drop_table :substitutions
  end
end
