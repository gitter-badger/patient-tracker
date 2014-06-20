# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

User.create!(
  [
    {
      name: 'Administrator',
      role: 'Admin'
    },
    {
      name: 'Doctor Doe',
      role: 'Doctor'
    }
  ]
)



puts "Created #{User.count} users!"



Patient.destroy_all

Patient.create!(
  [
    {
      encounter_type: 'Adult Medicine',
      user_id: User.first.id,
      created_at: 5.days.ago
    },
    {
      encounter_type: 'Adult Medicine',
      user_id: User.first.id,
      created_at: 4.days.ago
    },
    {
      encounter_type: 'Adult Medicine',
      user_id: User.first.id,
      created_at: 3.days.ago
    },
    {
      encounter_type: 'Adult Medicine',
      user_id: User.first.id,
      created_at: 2.days.ago
    },
    {
      encounter_type: 'ICU',
      user_id: User.first.id,
      created_at: 2.days.ago
    },
    {
      encounter_type: 'Long-term Care',
      user_id: User.first.id,
      created_at: 2.days.ago
    },
    {
      encounter_type: 'Long-term Care',
      user_id: User.first.id,
      created_at: 2.days.ago
    },
    {
      encounter_type: 'Newborn',
      user_id: User.first.id,
      created_at: 1.days.ago
    },
    {
      encounter_type: 'Pediatric ER',
      user_id: User.first.id,
      created_at: 5.days.ago
    },
    {
      encounter_type: 'Pediatric ER',
      user_id: User.first.id,
      created_at: 4.days.ago
    },
    {
      encounter_type: 'Pediatric Inpatient',
      user_id: User.first.id,
      encountered_on: 1.day.ago
    },
    {
      encounter_type: 'Pediatric Inpatient',
      user_id: User.first.id,
      encountered_on: 2.days.ago
    },
    {
      encounter_type: 'Pediatric Inpatient',
      user_id: User.first.id,
      encountered_on: 2.days.ago
    }
  ]
)

puts "Created #{Patient.count} patients!"
