# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_options = { col_sep: ';', quote_char: '"', headers: :first_row }
filepath    = './db/open-ccam0.csv'

CSV.foreach(filepath, csv_options) do |row|
  p row[7], row[11], row[12]
end
