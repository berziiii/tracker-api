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

User.create([
  { email: 'jhorn@me.com', password: '123', password_confirmation: '123', admin: true },
  { email: 'brian@brian.com', password: '123', password_confirmation: '123', admin: true },
  { email: 'payne@payne.com', password: '123', password_confirmation: '123', admin: true },
  { email: 'andrea@andrea.com', password: '123', password_confirmation: '123', admin: false },
  { email: 'arielle@arielle.com', password: '123', password_confirmation: '123', admin: false },
  { email: 'tina@tina.com', password: '123', password_confirmation: '123', admin: false },
  { email: 'erin@erin.com', password: '123', password_confirmation: '123', admin: false },
  { email: 'esther@esther.com', password: '123', password_confirmation: '123', admin: false },
  { email: 'jacob@jacob.com', password: '123', password_confirmation: '123', admin: false },
  { email: 'john@john.com', password: '123', password_confirmation: '123', admin: false },
  { email: 'jonj@jonj.com', password: '123', password_confirmation: '123', admin: false },
  { email: 'josh@josh.com', password: '123', password_confirmation: '123', admin: false },
  { email: 'lindsey@lindsey.com', password: '123', password_confirmation: '123', admin: false },
  { email: 'matt@matt.com', password: '123', password_confirmation: '123', admin: false },
  { email: 'misha@misha.com', password: '123', password_confirmation: '123', admin: false },
  { email: 'ruben@ruben.com', password: '123', password_confirmation: '123', admin: false },
  { email: 'sarah@sarah.com', password: '123', password_confirmation: '123', admin: false },
  { email: 'shireen@shireen.com', password: '123', password_confirmation: '123', admin: false },
  { email: 'tara@tara.com', password: '123', password_confirmation: '123', admin: false }
])

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

Profile.create([
  { first_name: 'Brian', last_name: 'Berzellini', gender: 'm', phone_number: '443-904-6764', github_username: 'berziiii', user_id: 2 },
  { first_name: 'Chris', last_name: 'Payne', gender: 'm', phone_number: '123-456-7894', github_username: 'foo', user_id: 3 },
  { first_name: 'Jeff', last_name: 'Horn', gender: 'm', phone_number: '443-222-2222', github_username: 'jhorn', user_id: 1 },
  { first_name: 'Andrea', last_name: 'Santari', gender: 'f', phone_number: '123-123-1234', github_username: 'andrea', user_id: 4 },
  { first_name: 'Arielle', last_name: 'Lopez', gender: 'f', phone_number: '123-456-7894', github_username: 'arielle', user_id: 5 },
  { first_name: 'Tina', last_name: 'Ashanjiang', gender: 'f', phone_number: '443-222-2222', github_username: 'tina', user_id: 6 },
  { first_name: 'Erin', last_name: 'Sullivan', gender: 'f', phone_number: '443-904-6764', github_username: 'Erin', user_id: 7 },
  { first_name: 'Esther', last_name: 'Cordova', gender: 'f', phone_number: '123-456-7894', github_username: 'Esther', user_id: 8 },
  { first_name: 'Jacob', last_name: 'Hereford', gender: 'm', phone_number: '443-222-2222', github_username: 'jacob', user_id: 9 },
  { first_name: 'John', last_name: 'Stanley', gender: 'm', phone_number: '123-123-1234', github_username: 'johns', user_id: 10 },
  { first_name: 'Jon', last_name: 'Janulewicz', gender: 'm', phone_number: '123-456-7894', github_username: 'jonj', user_id: 11 },
  { first_name: 'Josh', last_name: 'Husted', gender: 'm', phone_number: '443-222-2222', github_username: 'JoshH', user_id: 12 },
  { first_name: 'Lindsey', last_name: 'Curran', gender: 'f', phone_number: '443-904-6764', github_username: 'lindsey', user_id: 13 },
  { first_name: 'Matt', last_name: 'Buffardi', gender: 'm', phone_number: '123-456-7894', github_username: 'mattb', user_id: 14 },
  { first_name: 'Misha', last_name: 'Herscu', gender: 'm', phone_number: '443-222-2222', github_username: 'misha', user_id: 15 },
  { first_name: 'Ruben', last_name: 'Rebolledo', gender: 'm', phone_number: '123-123-1234', github_username: 'ruben', user_id: 16 },
  { first_name: 'Sarah', last_name: 'Hartwick', gender: 'm', phone_number: '123-456-7894', github_username: 'sarah', user_id: 17 },
  { first_name: 'Shireen', last_name: 'Kheradpey', gender: 'f', phone_number: '443-222-2222', github_username: 'shireen', user_id: 18 },
  { first_name: 'Tara', last_name: 'Favazza', gender: 'm', phone_number: '443-904-6764', github_username: 'tara', user_id: 19 }
])

Enrollment.create([
    {profile_id: 4, cohort_id: 1},
    {profile_id: 5, cohort_id: 1},
    {profile_id: 6, cohort_id: 1},
    {profile_id: 7, cohort_id: 1},
    {profile_id: 8, cohort_id: 1},
    {profile_id: 9, cohort_id: 1},
    {profile_id: 10, cohort_id: 1},
    {profile_id: 11, cohort_id: 1},
    {profile_id: 12, cohort_id: 1},
    {profile_id: 13, cohort_id: 1},
    {profile_id: 14, cohort_id: 1},
    {profile_id: 15, cohort_id: 1},
    {profile_id: 16, cohort_id: 1},
    {profile_id: 17, cohort_id: 1},
    {profile_id: 18, cohort_id: 1},
    {profile_id: 19, cohort_id: 1}
  ])

Attendence.create([
  { day: '20160802', option: 'Late', note: 'Andrea informed Brian that she would be running about 20 minutes late today.', profile_id: 4},
  { day: '20160802', option: 'Absent', note: 'Josh was a no show. He did not inform any member of the instructional team that he would be out.', profile_id: 12},
])  
