class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :role

      t.timestamps
    end
  end

  def self.down
    #Do not allow the users table to be removed
    raise ActiveRecord::IrreversibleMigration
  end
end
