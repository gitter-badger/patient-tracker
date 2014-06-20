# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Patient.destroy_all

Patient.create!(
  [
    { encounter_type: 'Adult Medicine' },
    { encounter_type: 'Adult Medicine' },
    { encounter_type: 'Adult Medicine' },
    { encounter_type: 'Adult Medicine' },
    { encounter_type: 'ICU' },
    { encounter_type: 'Long-term Care' },
    { encounter_type: 'Long-term Care' },
    { encounter_type: 'Newborn' },
    { encounter_type: 'Pediatric ER' },
    { encounter_type: 'Pediatric ER' },
    { encounter_type: 'Pediatric Inpatient' }
  ]
)

puts "Created #{Patient.count} patients!"
