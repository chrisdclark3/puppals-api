# rake geocode:all CLASS=User SLEEP=5 BATCH=5

u1 = User.create(
	id: 1,
	first_name: 'Chris',
	last_name: 'Clark',
	email: 'chrisdclark3@gmail.com',
	address: '2390 Francisco Street, San Francisco CA, 94123',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/1.jpeg"),
	dogs: Dog.where(id: 1)
)

d1 = Dog.create(
	id: 1,
	name: "Barkley",
	age: 4,
	size: "S",
	breed: "Maltese Shitzu",
	gender: "M",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar: File.open("#{Rails.root}/public/system/dogs/images/1.jpeg"),
	users: User.where(id: 1)
)

puts "USER"
puts u1.inspect
puts "DOG"
puts d1.inspect

u2 = User.create(
	id: 2,
	first_name: 'Gracie',
	last_name: 'Allen',
	email: 'gallen@gmail.com',
	address: '2209 Chestnut St San Francisco, CA 94123',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/2.jpeg"),
	dogs: Dog.where(id: 2)
)

d2 = Dog.create(
	id: 2,
	name: "Spots",
	age: 2,
	size: "L",
	breed: "Dalmatian",
	gender: "M",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar: File.open("#{Rails.root}/public/system/dogs/images/2.jpeg"),
	users: User.where(id: 2)
)

puts "USER"
puts u2.inspect
puts "DOG"
puts d2.inspect

u3 = User.create(
	id: 3,
	first_name: 'Natalie',
	last_name: 'Wood',
	email: 'nwood@gmail.com',
	address: '1935 Lombard St, San Francisco, CA 94123',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/3.jpeg"),
	dogs: Dog.where(id: 3)
)

d3 = Dog.create(
	id: 3,
	name: "Tyson",
	age: 8,
	size: "L",
	breed: "Boxer",
	gender: "M",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar: File.open("#{Rails.root}/public/system/dogs/images/3.jpeg"),
	users: User.where(id: 3)
)

puts "USER"
puts u3.inspect
puts "DOG"
puts d3.inspect

u4 = User.create(
	id: 4,
	first_name: 'Jack',
	last_name: 'London',
	email: 'jlondon@gmail.com',
	address: '2601 Divisadero St, San Francisco, CA 94123',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/4.jpeg"),
	dogs: Dog.where(id: 4)
)

d4 = Dog.create(
	id: 4,
	name: "Fang",
	age: 12,
	size: "L",
	breed: "Siberian Husky",
	gender: "M",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar: File.open("#{Rails.root}/public/system/dogs/images/4.jpeg"),
	users: User.where(id: 4)
)

puts "USER"
puts u4.inspect
puts "DOG"
puts d4.inspect

u5 = User.create(
	id: 5,
	first_name: 'Jeffrey',
	last_name: 'Tambor',
	email: 'jtambor@gmail.com',
	address: '2207 Scott St, San Francisco, CA 94115',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/5.jpeg"),
	dogs: Dog.where(id: 5)
)

d5 = Dog.create(
	id: 5,
	name: "Lucy",
	age: 1,
	size: "XS",
	breed: "Havanese",
	gender: "F",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar: File.open("#{Rails.root}/public/system/dogs/images/5.jpeg"),
	users: User.where(id: 5)
)

puts "USER"
puts u5.inspect
puts "DOG"
puts d5.inspect

u6 = User.create(
	id: 6,
	first_name: 'Lester',
	last_name: 'Holt',
	email: 'lholt@gmail.com',
	address: '1468-1490 Francisco St, San Francisco, CA 94123',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/6.jpeg"),
	dogs: Dog.where(id: 6)
)

d6 = Dog.create(
	id: 6,
	name: "Frisco",
	age: 11,
	size: "XS",
	breed: "Chihuahua",
	gender: "M",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar: File.open("#{Rails.root}/public/system/dogs/images/6.jpeg"),
	users: User.where(id: 6)
)

puts "USER"
puts u6.inspect
puts "DOG"
puts d6.inspect

u7 = User.create(
	id: 7,
	first_name: 'Kevin',
	last_name: 'Pollak',
	email: 'kpollak@gmail.com',
	address: '116 Magnolia St, San Francisco, CA 94123',
	password_digest: 'password',
	avatar:  File.open("#{Rails.root}/public/system/users/images/7.jpeg"),
	dogs: Dog.where(id: 7)
)

d7 = Dog.create(
	id: 7,
	name: "Sandy",
	age: 7,
	size: "XS",
	breed: "Brussels Griffon",
	gender: "F",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar: File.open("#{Rails.root}/public/system/dogs/images/7.jpeg"),
	users: User.where(id: 7)
)

puts "USER"
puts u7.inspect
puts "DOG"
puts d7.inspect

u8 = User.create(
	id: 8,
	first_name: 'David',
	last_name: 'Straithairn',
	email: 'dstraithairn@gmail.com',
	address: '2399 Green St, San Francisco, CA 94123',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/8.jpeg"),
	dogs: Dog.where(id: 8)
)

d8 = Dog.create(
	id: 8,
	name: "Biggie",
	age: 3,
	size: "XS",
	breed: "Yorkshire Terrier",
	gender: "M",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar: File.open("#{Rails.root}/public/system/dogs/images/8.jpeg"),
	users: User.where(id: 8)
)

puts "USER"
puts u8.inspect
puts "DOG"
puts d8.inspect

u9 = User.create(
	id: 9,
	first_name: 'Jerry',
	last_name: 'Garcia',
	email: 'jgarcia@gmail.com',
	address: '2230 Scott St, San Francisco, CA 94115',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/9.jpeg"),
	dogs: Dog.where(id: 9)
)

d9 = Dog.create(
	id: 9,
	name: "Mary Jane",
	age: 9,
	size: "XL",
	breed: "Bernese Mountain Dog",
	gender: "F",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar: File.open("#{Rails.root}/public/system/dogs/images/9.jpeg"),
	users: User.where(id: 9)
)

puts "USER"
puts u9.inspect
puts "DOG"
puts d9.inspect

u10 = User.create(
	id: 10,
	first_name: 'Bruce',
	last_name: 'Lee',
	email: 'blee@gmail.com',
	address: '2912 Laguna St, San Francisco, CA 94123',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/10.jpeg"),
	dogs: Dog.where(id: 10)
)

d10 = Dog.create(
	id: 10,
	name: "Chi",
	age: 2,
	size: "L",
	breed: "German Shepard",
	gender: "M",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar:  File.open("#{Rails.root}/public/system/dogs/images/10.jpeg"),
	users: User.where(id: 10)
)

puts "USER"
puts u10.inspect
puts "DOG"
puts d10.inspect

u11 = User.create(
	id: 11,
	first_name: 'Tedy',
	last_name: 'Bruschi',
	email: 'tbruschi@gmail.com',
	address: '1540 Beach St, San Francisco, CA 94123',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/11.jpeg"),
	dogs: Dog.where(id: 11)
)

d11 = Dog.create(
	id: 11,
	name: "Wrigley",
	age: 1,
	size: "S",
	breed: "Shiba Inu",
	gender: "M",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar:  File.open("#{Rails.root}/public/system/dogs/images/11.jpeg"),
	users: User.where(id: 11)
)

puts "USER"
puts u11.inspect
puts "DOG"
puts d11.inspect

u12 = User.create(
	id: 12,
	first_name: 'Donald',
	last_name: 'Strickland',
	email: 'dstrickland@gmail.com',
	address: '67 Casa Way, San Francisco, CA 94123',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/12.jpeg"),
	dogs: Dog.where(id: 12)
)

d12 = Dog.create(
	id: 12,
	name: "Fluffy",
	age: 12,
	size: "XS",
	breed: "Pomeranian",
	gender: "F",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar:  File.open("#{Rails.root}/public/system/dogs/images/12.jpeg"),
	users: User.where(id: 12)
)

puts "USER"
puts u12.inspect
puts "DOG"
puts d12.inspect

u13 = User.create(
	id: 13,
	first_name: 'Steve',
	last_name: 'Young',
	email: 'syoung@gmail.com',
	address: '3666 Baker St, San Francisco, CA 94123',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/13.jpeg"),
	dogs: Dog.where(id: 13)
)

d13 = Dog.create(
	id: 13,
	name: "Champ",
	age: 3,
	size: "XS",
	breed: "Maltese",
	gender: "M",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar:  File.open("#{Rails.root}/public/system/dogs/images/13.jpeg"),
	users: User.where(id: 13)
)

puts "USER"
puts u13.inspect
puts "DOG"
puts d13.inspect

u14 = User.create(
	id: 14,
	first_name: 'Jerry',
	last_name: 'Rice',
	email: 'jrice@gmail.com',
	address: '3253 Baker St, San Francisco, CA 94123',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/14.jpeg"),
	dogs: Dog.where(id: 14)
)

d14 = Dog.create(
	id: 14,
	name: "Squishy",
	age: 2,
	size: "S",
	breed: "Pug",
	gender: "F",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar:  File.open("#{Rails.root}/public/system/dogs/images/14.jpeg"),
	users: User.where(id: 14)
)

puts "USER"
puts u14.inspect
puts "DOG"
puts d14.inspect

u15 = User.create(
	id: 15,
	first_name: 'Joe',
	last_name: 'Montana',
	email: 'jmontana@gmail.com',
	address: '1926 Jefferson St, San Francisco, CA 94123',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/15.jpeg"),
	dogs: Dog.where(id: 15)
)

d15 = Dog.create(
	id: 15,
	name: "Niner",
	age: 14,
	size: "XL",
	breed: "Saint Bernard",
	gender: "M",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar:  File.open("#{Rails.root}/public/system/dogs/images/15.jpeg"),
	users: User.where(id: 15)
)

puts "USER"
puts u15.inspect
puts "DOG"
puts d15.inspect

u16 = User.create(
	id: 16,
	first_name: 'Tom',
	last_name: 'Brady',
	email: 'tbrady@gmail.com',
	address: '1098 Bay St, San Francisco, CA 94109',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/16.jpeg"),
	dogs: Dog.where(id: 16)
)

d16 = Dog.create(
	id: 16,
	name: "Snowball",
	age: 7,
	size: "XL",
	breed: "Great Pyrenees",
	gender: "F",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar:  File.open("#{Rails.root}/public/system/dogs/images/16.jpeg"),
	users: User.where(id: 16)
)

puts "USER"
puts u16.inspect
puts "DOG"
puts d16.inspect

u17 = User.create(
	id: 17,
	first_name: 'Bill',
	last_name: 'Russell',
	email: 'brussell@gmail.com',
	address: '1445 Union St, San Francisco, CA 94109',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/17.jpeg"),
	dogs: Dog.where(id: 17)
)

d17 = Dog.create(
	id: 17,
	name: "Rings",
	age: 10,
	size: "XL",
	breed: "Newfoundland",
	gender: "M",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar:  File.open("#{Rails.root}/public/system/dogs/images/17.jpeg"),
	users: User.where(id: 17)
)

puts "USER"
puts u17.inspect
puts "DOG"
puts d17.inspect

u18 = User.create(
	id: 18,
	first_name: 'Danny',
	last_name: 'Glover',
	email: 'dglover@gmail.com',
	address: '766 Marina Blvd, San Francisco, CA 94123',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/18.jpeg"),
	dogs: Dog.where(id: 18)
)

d18 = Dog.create(
	id: 18,
	name: "Riggs",
	age: 10,
	size: "XL",
	breed: "Golden Retriever",
	gender: "M",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar:  File.open("#{Rails.root}/public/system/dogs/images/18.jpeg"),
	users: User.where(id: 18)
)

puts "USER"
puts u18.inspect
puts "DOG"
puts d18.inspect

u19 = User.create(
	id: 19,
	first_name: 'Genevieve',
	last_name: 'Padalecki',
	email: 'gpadalecki@gmail.com',
	address: '1626 North Point St, San Francisco, CA 94123',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/19.jpeg"),
	dogs: Dog.where(id: 19)
)

d19 = Dog.create(
	id: 19,
	name: "Marcy",
	age: 13,
	size: "XL",
	breed: "Mastiff",
	gender: "F",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar:  File.open("#{Rails.root}/public/system/dogs/images/19.jpeg"),
	users: User.where(id: 19)
)

puts "USER"
puts u19.inspect
puts "DOG"
puts d19.inspect

u20 = User.create(
	id: 20,
	first_name: 'Alicia',
	last_name: 'Silverstone',
	email: 'asilverstone@gmail.com',
	address: '35 Mesa St, San Francisco, CA 94129',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/20.jpeg"),
	dogs: Dog.where(id: 20)
)

d20 = Dog.create(
	id: 20,
	name: "Snoopy",
	age: 4,
	size: "S",
	breed: "Basset Hound",
	gender: "M",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar:  File.open("#{Rails.root}/public/system/dogs/images/20.jpeg"),
	users: User.where(id: 20)
)

puts "USER"
puts u20.inspect
puts "DOG"
puts d20.inspect

u21 = User.create(
	id: 21,
	first_name: 'Tom',
	last_name: 'Hanks',
	email: 'thanks@gmail.com',
	address: '2639 Chestnut St, San Francisco, CA 94123',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/21.jpeg"),
	dogs: Dog.where(id: 21)
)

d21 = Dog.create(
	id: 21,
	name: "Forrest",
	age: 5,
	size: "M",
	breed: "Nova Scotia Duck Tolling Retriever",
	gender: "M",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar:  File.open("#{Rails.root}/public/system/dogs/images/21.jpeg"),
	users: User.where(id: 21)
)

puts "USER"
puts u21.inspect
puts "DOG"
puts d21.inspect

u22 = User.create(
	id: 22,
	first_name: 'Liev',
	last_name: 'Shreiber',
	email: 'lshreiber@gmail.com',
	address: '726 Liggett Ave, San Francisco, CA 94129',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/22.jpeg"),
	dogs: Dog.where(id: 22)
)

d22 = Dog.create(
	id: 22,
	name: "Jamie",
	age: 8,
	size: "S",
	breed: "Airedale Terrier",
	gender: "F",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar:  File.open("#{Rails.root}/public/system/dogs/images/22.jpeg"),
	users: User.where(id: 22)
)

puts "USER"
puts u22.inspect
puts "DOG"
puts d22.inspect

u23 = User.create(
	id: 23,
	first_name: 'Clint',
	last_name: 'Eastwood',
	email: 'ceastwood@gmail.com',
	address: '3019 Washington St, San Francisco, CA 94115',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/23.jpeg"),
	dogs: Dog.where(id: 23)
)

d23 = Dog.create(
	id: 23,
	name: "John",
	age: 4,
	size: "XL",
	breed: "Rhodesian Ridgeback",
	gender: "M",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar:  File.open("#{Rails.root}/public/system/dogs/images/23.jpeg"),
	users: User.where(id: 23)
)

puts "USER"
puts u23.inspect
puts "DOG"
puts d23.inspect

u24 = User.create(
	id: 24,
	first_name: 'Leslie',
	last_name: 'Mann',
	email: 'lmann@gmail.com',
	address: '2934 Broderick St, San Francisco, CA 94123',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/24.jpeg"),
	dogs: Dog.where(id: 24)
)

d24 = Dog.create(
	id: 24,
	name: "Shirlock",
	age: 1,
	size: "M",
	breed: "Beagle",
	gender: "M",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar:  File.open("#{Rails.root}/public/system/dogs/images/24.jpeg"),
	users: User.where(id: 24)
)

puts "USER"
puts u24.inspect
puts "DOG"
puts d24.inspect

u25 = User.create(
	id: 25,
	first_name: 'Josh',
	last_name: 'Hartnett',
	email: 'jhartnett@gmail.com',
	address: '44 Pixley St, San Francisco, CA 94123',
	password_digest: 'password',
	avatar: File.open("#{Rails.root}/public/system/users/images/25.jpeg"),
	dogs: Dog.where(id: 25)
)

d25 = Dog.create(
	id: 25,
	name: "Marsha",
	age: 9,
	size: "L",
	breed: "Poodle",
	gender: "F",
	description: "My dog is awesome and plays well with kids, small dogs and big dogs",
	avatar:  File.open("#{Rails.root}/public/system/dogs/images/25.jpeg"),
	users: User.where(id: 25)
)

puts "USER"
puts u25.inspect
puts "DOG"
puts d25.inspect

Conversation.create(
	id: 1,
	sender_id: 1,
	recipient_id: 23
)

Message.create(
	user_id: 1,
	conversation_id: 1,
	body: "Hey Clint, do you and John want to go for a walk?",
	read: true
)

Message.create(
	user_id: 23,
	conversation_id: 1,
	body: "Ya feeling lucky punk?",
	read: true
)

Message.create(
	user_id: 1,
	conversation_id: 1,
	body: "I think so?",
	read: true
)

Message.create(
	user_id: 23,
	conversation_id: 1,
	body: "Just kidding - give me 20 minutes, we'll come down to you",
	read: true
)

Conversation.create(
	id: 2,
	sender_id: 10,
	recipient_id: 1
)

Message.create(
	user_id: 10,
	conversation_id: 2,
	body: "Sorry about last night, I completely lost track of time",
	read: true
)

Message.create(
	user_id: 1,
	conversation_id: 2,
	body: "'Mistakes are always forgivable, if one has the courage to admit them.'",
	read: true
)

Message.create(
	user_id: 10,
	conversation_id: 2,
	body: "HA - I see what you did there",
	read: true
)

Conversation.create(
	id: 3,
	sender_id: 1,
	recipient_id: 17,
)

Message.create(
	user_id: 1,
	conversation_id: 3,
	body: "Hey Bill, do you and Rings want to go for a walk?",
	read: true
)

Message.create(
	user_id: 17,
	conversation_id: 3,
	body: "Yevnf hdsa abjbdmo",
	read: true
)

Message.create(
	user_id: 1,
	conversation_id: 3,
	body: "?",
	read: true
)

Message.create(
	user_id: 17,
	conversation_id: 3,
	body: "Sorry about that...",
	read: false
)

Message.create(
	user_id: 17,
	conversation_id: 3,
	body: "You would not believe how hard it is to type with 11 championship rings on",
	read: false
)

