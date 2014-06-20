# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

admin    = User.create!({name: 'Administrator',  role: 'Admin' })
doctor_1 = User.create!({name: 'Doctor Joe',     role: 'Doctor'})
doctor_2 = User.create!({name: 'Doctor Jane',    role: 'Doctor'})

puts "Created #{User.count} users!"



Patient.destroy_all

Patient.create!(
  [
    {
      encounter_type: 'Adult Medicine',
      user: doctor_1,
      created_at: 5.days.ago
    },
    {
      encounter_type: 'Adult Medicine',
      user: doctor_1,
      created_at: 4.days.ago
    },
    {
      encounter_type: 'Adult Medicine',
      user: doctor_1,
      created_at: 3.days.ago
    },
    {
      encounter_type: 'Adult Medicine',
      user: doctor_1,
      created_at: 2.days.ago
    },
    {
      encounter_type: 'ICU',
      user: doctor_1,
      created_at: 2.days.ago
    },
    {
      encounter_type: 'Long-term Care',
      user: doctor_1,
      created_at: 2.days.ago
    },
    {
      encounter_type: 'Long-term Care',
      user: doctor_2,
      created_at: 2.days.ago
    },
    {
      encounter_type: 'Newborn',
      user: doctor_1,
      created_at: 1.days.ago
    },
    {
      encounter_type: 'Pediatric ER',
      user: doctor_1,
      created_at: 5.days.ago
    },
    {
      encounter_type: 'Pediatric ER',
      user: doctor_1,
      created_at: 4.days.ago
    },
    {
      encounter_type: 'Pediatric Inpatient',
      user: doctor_1,
      encountered_on: 1.day.ago
    },
    {
      encounter_type: 'Pediatric Inpatient',
      user: doctor_2,
      encountered_on: 2.days.ago
    },
    {
      encounter_type: 'Pediatric Inpatient',
      user: doctor_2,
      encountered_on: 2.days.ago
    }
  ]
)

puts "Created #{Patient.count} patients!"
