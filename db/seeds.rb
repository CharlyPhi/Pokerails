Vote.destroy_all

puts 'Adding votes ! (Not Russia style)'
vote1 = Vote.create!(description: 'Contact form', number: 0)
vote2 = Vote.create!(description: 'Overall design', number: 0)
vote3 = Vote.create!(description: ' Nurse Joy', number: 0)
vote4 = Vote.create!(description: 'User avatar', number: 0)

# puts 'Creating Users, well at least I'll have those..... it counts !'
# user0 = User.create!(username: '4ar0n', email: 'aaron@mail.com', password: '123456', avatar: 'cool-doge.png')
# user1 = User.create!(username: 'Ch4r1y', email: 'charly@mail.com', password: '123456', avatar: 'cool-duck.png')
# user2 = User.create!(username: '4sh', email: 'TheVeryBest@mail.com', password: 'pikachu', avatar: 'coolest-duck.jpg')
puts

puts"
        __          __          __          __
      <(o )___    <(o )___    <(o )___    <(o )___
       ( ._> /     ( ._> /     ( ._> /     ( ._> /
        `---'       `---'       `---'       `---'....
"
puts ' The four ducks of luck grant you safe passage, dont linger, they could change their mind.'
