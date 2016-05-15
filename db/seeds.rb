# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file .env file.
states = State.create([{ name: 'Alabama', abvr: 'AL'},
{ name: 'Alaska', abvr: 'AK'},
{ name: 'Arizona', abvr: 'AZ'},
{ name: 'Arkansas', abvr: 'AR'},
{ name: 'California', abvr: 'CA'},
{ name: 'Colorado', abvr: 'CO'},
{ name: 'Connecticut', abvr: 'CT'},
{ name: 'Delaware', abvr: 'DE'},
{ name: 'District of Columbia', abvr: 'DC'},
{ name: 'Florida', abvr: 'FL'},
{ name: 'Georgia', abvr: 'GA'},
{ name: 'Hawaii', abvr: 'HI'},
{ name: 'Idaho', abvr: 'ID'},
{ name: 'Illinois', abvr: 'IL'},
{ name: 'Indiana', abvr: 'IN'},
{ name: 'Iowa', abvr: 'IA'},
{ name: 'Kansas', abvr: 'KS'},
{ name: 'Kentucky', abvr: 'KY'},
{ name: 'Louisiana', abvr: 'LA'},
{ name: 'Maine', abvr: 'ME'},
{ name: 'Maryland', abvr: 'MD'},
{ name: 'Massachusetts', abvr: 'MA'},
{ name: 'Michigan', abvr: 'MI'},
{ name: 'Minnesota', abvr: 'MN'},
{ name: 'Mississippi', abvr: 'MS'},
{ name: 'Missouri', abvr: 'MO'},
{ name: 'Montana', abvr: 'MT'},
{ name: 'Nebraska', abvr: 'NE'},
{ name: 'Nevada', abvr: 'NV'},
{ name: 'New Hampshire', abvr: 'NH'},
{ name: 'New Jersey', abvr: 'NJ'},
{ name: 'New Mexico', abvr: 'NM'},
{ name: 'New York', abvr: 'NY'},
{ name: 'North Carolina', abvr: 'NC'},
{ name: 'North Dakota', abvr: 'ND'},
{ name: 'Ohio', abvr: 'OH'},
{ name: 'Oklahoma', abvr: 'OK'},
{ name: 'Oregon', abvr: 'OR'},
{ name: 'Pennsylvania', abvr: 'PA'},
{ name: 'Rhode Island', abvr: 'RI'},
{ name: 'South Carolina', abvr: 'SC'},
{ name: 'South Dakota', abvr: 'SD'},
{ name: 'Tennessee', abvr: 'TN'},
{ name: 'Texas', abvr: 'TX'}, 
{ name: 'Utah', abvr: 'UT'},
{ name: 'Vermont', abvr: 'VT'},
{ name: 'Virginia', abvr: 'VA'},
{ name: 'Washington', abvr: 'WA'},
{ name: 'West Virginia', abvr: 'WV'},
{ name: 'Wisconsin', abvr: 'WI'},
{ name: 'Wyoming', abvr: 'WY'}])

ratings = Rating.create([{stars: 1}, {stars: 2}, {stars: 3}, {stars: 4}, {stars: 5}])
categories = Category.create([{name: 'Merging'}, {name: 'Parking' }, {name: 'Turning' }, {name: 'Speed' }, {name: 'General/Other' }])
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
