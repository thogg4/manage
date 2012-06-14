# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

roles = ["partner", "website manager", "super"]
roles.each do |r|
  Role.create(role: r)
end

statuses = ["defined", "in-progress", "completed", "approved"]
statuses.each do |s|
  Status.create(status: s)
end
