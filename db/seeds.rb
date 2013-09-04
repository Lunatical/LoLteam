# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "admin@user.com", password: "1234", name: "admin", game_nickname: "master")
Match.create(winner_id: "2", w_k_count: "30", w_d_count: "5", w_a_count: "3", loser_id: "1", l_k_count: "2", l_d_count: "3", l_a_count: "12", matched_at: "2013-09-04 04:53:21", title: "123123")
1.upto(116).each do |i|
  Champion.create(image: File.open("#{Rails.root}/test/fixtures/champions/#{i}/1.jpg"))
end
