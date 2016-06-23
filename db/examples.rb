# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

Program.create([
  { title: 'Web Development Immersive' },
  { title: 'User Experience Immersive' },
  { title: 'Data Science Immersive' }
])

Cohort.create([
  { title: 'WDI-012', start_date: 20160518, end_date: 20160805, market: 'Boston', program_id: 1 },
  { title: 'UXDI-06', start_date: 20160623, end_date: 20160825, market: 'Boston', program_id: 2 },
  { title: 'DSI-01', start_date: 20160721, end_date: 20160926, market: 'Boston', program_id: 3 }
])
