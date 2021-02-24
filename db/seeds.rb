# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
Action.destroy_all
puts 'Destroying actions'

Category.destroy_all
puts 'Destroying categories'

Code.destroy_all
puts 'Destroying codes'

Patient.destroy_all
puts 'Destroying patients'

User.destroy_all
puts 'Destroying users'

#----------------------------#

puts 'Creating Users'

nastasia = User.new(first_name: 'Nastasia', email: 'nastasia@gmail.com', password: '123456')
nastasia.save!
manon = User.new(first_name: 'Manon', email: 'manon@gmail.com', password: '123456')
manon.save!
laure = User.new(first_name: 'Laure', email: 'laure@gmail.com', password: '123456')
laure.save!
sami = User.new(first_name: 'Sami', email: 'sami@gmail.com', password: '123456')
sami.save!
annick = User.create(first_name: 'Annick', email: 'annick@gmail.com', password: '123456' )

puts "#{User.all.length} users created"

#---------------------------CSV parsing----------------------------#

csv_options = { col_sep: ';', quote_char: '"', headers: :first_row }
filepath    = './db/open-ccam0.csv'

CSV.foreach(filepath, csv_options) do |row|
  code = Code.new(
    name: row[3],
    code: row[0],
    price: row[4],
    diagnostic: " ",
  )
end

puts 'Creating Patients'

patient1 = Patient.new(first_name: 'Meghan', last_name: 'Markle', age: '35', birth_date: '23 Février 2021', nss:'269054958815787', description: '', number_of_weeks: '9 month')
patient2 = Patient.new(first_name: 'Kate', last_name: 'Middleton', age: '38', birth_date: '1 Mars 2021', nss:'269055968916790', description: '', number_of_weeks: '8 month')
patient1.save!
patient2.save!


puts "#{Patient.all.length} patients created"

puts 'done seeding'
