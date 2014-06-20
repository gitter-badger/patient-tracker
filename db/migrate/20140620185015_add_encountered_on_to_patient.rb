class AddEncounteredOnToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :encountered_on, :date
  end
end
