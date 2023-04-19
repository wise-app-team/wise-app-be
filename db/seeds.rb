# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create!(name: "John Doe", email: "john@john.com", password: "password", password_confirmation: "password", birthday: "01/01/1999", phone_number: "1234567890", street_address: "123 Main St", city: "Denver", state: "NY", zip_code: "12345")
user2 = User.create!(name: "Jane Doe", email: "jane@jane.com", password: "password123", password_confirmation: "password123", birthday: "01/01/1997", phone_number: "5555555555", street_address: "321 Main St", city: "Denver", state: "NY", zip_code: "12345")

drug1 = Drug.create!(rxcui: "209459", name: "acetaminophen 500 MG Oral Tablet [Tylenol]", synonym: "Tylenol 500 MG Oral Tablet" )
drug2 = Drug.create!(rxcui: "541894", name: "amphetamine aspartate 2.5 MG / amphetamine sulfate 2.5 MG / dextroamphetamine saccharate 2.5 MG / dextroamphetamine sulfate 2.5 MG Oral Tablet [Adderall]", synonym: "Adderall 10 MG Oral Tablet")

user_drug1 = UserDrug.create!(user_id: user1.id, drug_id: drug1.id, dose1: "2000-01-01T09:00:00.000Z", dose2: "2000-01-01T12:00:00.000Z", dose3: "2000-01-01T19:00:00.000Z", prn: true, notes: "Take with food")
user_drug2 = UserDrug.create!(user_id: user1.id, drug_id: drug2.id, dose1: "2000-01-01T09:00:00.000Z", dose2: nil, dose3: nil, prn: false, notes: "Take with food and water")
user_drug3 = UserDrug.create!(user_id: user2.id, drug_id: drug1.id, dose1: "2000-01-01T09:00:00.000Z", dose2: "2000-01-01T12:00:00.000Z", dose3: "2000-01-01T19:00:00.000Z", prn: true, notes: "Take with food")