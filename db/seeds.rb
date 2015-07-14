# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

departments = Department.create([
  { name: 'Growth', manager: 'Luke Kuechly' },
  { name: 'Technology', manager: 'Cam Newton' },
  { name: 'Marketing', manager: 'Thomas Davis' },
  { name: 'UX', manager: 'Jonathan Stewart' },
  { name: 'UI', manager: 'Kelvin Benjamin' },
  { name: 'Project Mgmt', manager: 'Roman Harper' }])

statuses = Status.create([{ name: 'Reviewed'},
  { name: 'Phone Screen'},
  { name: 'Interview Invite'},
  { name: 'Interviewed'},
  { name: 'Declined'},
  { name: 'Hired' }])
