# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Task.delete_all
Task.create!(title: 'Buy Milk',
  author: 'Jay',
  owner: 'Jay',
  description: 'Buy milk in Mercadona. 1x semi, 1x skim.',
  status: 'incomplete',
  priority: 5,
  private: false)
# . . .
Task.create!(title: 'Milk Cow',
  author: 'Blanca',
  owner: 'Blanca',
  description: 'Milk the brown cow in the barn',
  status: 'Ongoing',
  priority: 2,
  private: false)
# . . .
Task.create!(title: 'Pick Corn',
  author: 'Farmer Joe',
  owner: 'Jay',
  description: 'Pick corn for the country dance. We need at least 100 cobs',
  status: 'Ongoing',
  priority: 1,
  private: false)
# . . .
Task.create!(title: 'Make Chocolate Milk',
  author: 'Blanca',
  owner: 'Blanca',
  description: 'Make a tall glass of chocolate milk using the milk from the brown cow',
  status: 'Pending completion of milking',
  priority: 3,
  private: false)
# . . .
Task.create!(title: 'Fly Kite',
  author: 'Jay',
  owner: 'Jay',
  description: 'Fly a dragon-shaped kite in the park to scare kids',
  status: 'complete',
  priority: 8,
  private: false)
# . . .
Task.create!(title: 'Roast a Duck',
  author: 'Blanca',
  owner: 'Jay',
  description: 'Roast a Peking Duck for Sunday Dinner.',
  status: 'incomplete',
  priority: 1,
  private: false)
# . . .
Community.delete_all
Community.create!(name: 'Smallville',
  description: "Blanca's action figure collection",
  public: true,
  invite_status: 'admin_invite')
# . . .
Community.create!(name: 'Villaseco de los Gamitos',
  description: 'Tasks and purchases for Pena la Casa',
  public: false,
  invite_status: 'invite')
# . . . 
Community.create!(name: 'Calle Angel Mugica 9, 4B',
  description: "Blanca and Jay's flat in Madrid",
  public: false,
  invite_status: 'admin_invite')
# . . .
Community.create!(name: 'Have a Nice Day!',
  description: "Place your tasks in this Pueblo to motivate yourself and others!",
  public: true,
  invite_status: 'open')
# . . .
User.delete_all
User.create!(name: 'James Neilson',
  password: 'abc123',
  password_confirmation: 'abc123',
  image_url: 'img_1.jpg')
# . . .
User.create!(name: 'Blanca Paz Garcia',
  password: '123456',
  password_confirmation: '123456',
  image_url: 'img_2.jpg')
# . . .
User.create!(name: 'Farmer Joe',
  password: 'redcow123',
  password_confirmation: 'redcow123',
  image_url: 'img_3.jpg')
# . . .
User.create!(name: 'Santa Claus',
  password: 'hohoho123',
  password_confirmation: 'hohoho123',
  image_url: 'img_4.jpg')
# . . .
User.create!(name: 'Easter Rabbit',
  password: 'hophop123',
  password_confirmation: 'hophop123',
  image_url: 'img_5.jpg')
