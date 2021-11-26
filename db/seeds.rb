(1.month.ago.to_date..Date.current).each do |date|
    #User.create!(users_name: Faker::Games::LeagueOfLegends.champion, email: Faker::Internet.email,  password: Faker::Games::LeagueOfLegends.location,  type_users: Faker::Number.between(from: 1, to: 3), created_at: date)
    User.create!(users_name: Faker::Games::LeagueOfLegends.champion, email: Faker::Internet.email,  password: Faker::Games::LeagueOfLegends.location,  type_users: 2, created_at: date)
end