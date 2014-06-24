# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ENCOUNTER_TYPES = [
                    'adult inpatient and ed',
                    'adult icu',
                    'pediatric inpatient',
                    'pediatric newborn',
                    'pediatric ed',
                    'continuity inpatient',
                    'continuity external'
                  ]


User.destroy_all

admin    = User.create!({ name: 'Developer',   role: 'Admin',  email: 'developer@example.com', password: 'password' })
doctor_1 = User.create!({ name: 'Doctor Joe',  role: 'Doctor', email: 'joe@example.com',       password: 'password' })
doctor_2 = User.create!({ name: 'Doctor Jane', role: 'Doctor', email: 'jane@example.com',      password: 'password' })

puts "Created #{User.count} users!"

Patient.destroy_all

ENCOUNTER_TYPES.each do |type|
  Patient.create!(encounter_type: type, encountered_on: Date.today, user: doctor_1)
  Patient.create!(encounter_type: type, encountered_on: 7.days.ago, user: doctor_2)
end

puts "Created #{Patient.count} patients!"
