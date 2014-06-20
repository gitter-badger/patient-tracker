class RenameTypeFromPatient < ActiveRecord::Migration
  def change
    rename_column :patients, :type, :encounter_type
  end
end
