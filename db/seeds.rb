# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# CLEAR ALL CURRENT DATA
State.destroy_all

# CREATE STATES
STATES.each { |state_array|
  State.create!(full_name: state_array[0], abbreviation: state_array[1], service_offered: state_array[2], minimum_age: state_array[3])
}

