# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:name => 'Markus',  email: "mguehrs@gmail.com", password: "foobar123", password_confirmation: "foobar123")
User.create(:name=> 'John', email: 'john@john.us', password: "john99", password_confirmation: "john99")
User.create(:name => 'Pooh', email: "pooh@poohbear.com", password: "poohbear", password_confirmation: "poohbear")
User.create(:name=> 'Simran', email: "me@simran.us", password: 'pearlt88', password_confirmation: 'pearlt88')


Donation.create(:amount=> '1500', charity_name: "Red Cross", user_id: 3)
Donation.create(:amount=> '5000', charity_name: "Sikhs for Justice", user_id: 2)
Donation.create(:amount=> '5500', charity_name: "Human Rights Watch", user_id: 2)
Donation.create(:amount=> '5000', charity_name: "Salvation Army", user_id: 1)
Donation.create(:amount=> '10000', charity_name: "Human Rights Watch", user_id: 3)
Donation.create(:amount=> '4500', charity_name: "Human Rights Watch", user_id: 3)
Donation.create(:amount=> '5000', charity_name: "Human Rights Watch", user_id: 1)