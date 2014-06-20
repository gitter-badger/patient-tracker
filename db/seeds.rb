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
    { encounter_type: 'Adult Medicine', created_at: 5.days.ago },
    { encounter_type: 'Adult Medicine', created_at: 4.days.ago },
    { encounter_type: 'Adult Medicine', created_at: 3.days.ago },
    { encounter_type: 'Adult Medicine', created_at: 2.days.ago },
    { encounter_type: 'ICU', created_at: 2.days.ago },
    { encounter_type: 'Long-term Care', created_at: 2.days.ago },
    { encounter_type: 'Long-term Care', created_at: 2.days.ago },
    { encounter_type: 'Newborn', created_at: 1.days.ago },
    { encounter_type: 'Pediatric ER', created_at: 5.days.ago },
    { encounter_type: 'Pediatric ER', created_at: 4.days.ago },
    { encounter_type: 'Pediatric Inpatient' }
  ]
)

puts "Created #{Patient.count} patients!"
