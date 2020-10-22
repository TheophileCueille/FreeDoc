# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

   100.times do
    doctor = Doctor.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, specialty: Faker::Job.title, zip_code: Faker::Number.between(from: 10000, to: 99000))
    end

    100.times do 
        patient = Patient.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name)
    end

    20.times do
        city = City.create(city_name: Faker::Address.city)
    end

    20.times do
        appointment = Appointment.create(date: Faker::Date.in_date_period, doctor: Doctor.all.sample, patient: Patient.all.sample, city: City.all.sample)
    end

    