# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    # Customer.create([{name:'Hamaad_Ahar'},{email:'this.hammad_azhar@gmailcom'},{address: 'lahore'}])

customer =	Customer.new(name: 'ali',  email: 'this.ali.com' , address: 'Fasiabad', city: 'FSD')
customer.save

customer =	Customer.new(name: 'ahmad',  email: 'this.ahmad.com' , address: 'multan', city: 'Los Angeles')
customer.save

customer =	Customer.new(name: 'waheed',  email: 'this.waheed.com' , address: 'kasur', city: 'california')
customer.save

venue_owners =	VenueOwner.new(name: 'waheed' , contact_no: '+92563412310')
venue_owners.save

venue_owners =	VenueOwner.new(name: 'hameed' , contact_no: '+92892323010')
venue_owners.save

venue_owners =	VenueOwner.new(name: 'akbar' , contact_no: '+92128108345')
venue_owners.save

venue_owners =	VenueOwner.new(name: 'rails' , contact_no: '+92129834091')
venue_owners.save

