# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Genre.destroy_all
Game.destroy_all
Review.destroy_all

puts "seeding users"

admin = User.create(username: "admin", password: "iamadmin22")
user1 = User.create(username: "ishwo1992", password: "iamishwor1992")

puts "seeding user completed"


puts "seeding genres"

action_adventure = Genre.create!(genre_type: "Action, Adventure, Drama")
racing = Genre.create!(genre_type: "Racing")
arcade  = Genre.create!(genre_type: "Arcade")
sports  = Genre.create!(genre_type: "Sports")
thriller = Genre.create!(genre_type: "Thriller")
action = Genre.create!(genre_type: "Action")
adventure = Genre.create!(genre_type: "Adventure, Drama")
fantasy = Genre.create!(genre_type: "Fantasy")
shooting = Genre.create!(genre_type: "Shooting")


puts "seeding genre completed"

puts "seeding games"

game1 = Game.create!(title: "Far Cry 6", description: "Welcome to Yara, a tropical paradise frozen in time. As the dictator of Yara, Anton Castillo is intent on restoring his nation back to its former glory by any means, with his son, Diego, following in his bloody footsteps. Their oppressive rule has ignited a revolution.", likes: 34, dislikes: 12, image: "https://i2.wp.com/www.superco-opbros.com/wp-content/uploads/2020/07/FarCry6Poster.png?fit=960%2C960&ssl=1", video_url: "https://www.youtube.com/watch?v=-IJuKT1mHO8", liked: false, disliked: false, genre_id: action.id)
game2 = Game.create!(title: "Ghost Recon", description: "Become a Ghost, an Elite US Special Operations soldier, as you fight to survive against your brothers who have turned against you.", likes: 40, dislikes: 10, image: "https://i.pinimg.com/originals/dd/d9/60/ddd9600c4037b8161fc57f245976eff1.png", video_url: "https://www.youtube.com/watch?v=y-9_d3IT_yA", liked: false, disliked: false, genre_id: action.id)
game3 = Game.create!(title: "Watch Dogs Legion", description: "Enhance your Watch Dogs®: Legion experience with the Deluxe Pack.", likes: 45, dislikes: 56, image: "https://www.videogamex.com/image/cache/catalog/Posters/watchdogsposter-1000x1410h.jpg", video_url: "https://www.youtube.com/watch?v=DqoQG_XYF-8", liked: false, disliked: false, genre_id: thriller.id)
game4 = Game.create!(title: "Rainbow Six Siege", description: "Upgrade to the Tom Clancy's Rainbow Six Siege Deluxe Edition! Includes the full game and 16 operators from Year 1 and Year 2.", likes: 46, dislikes: 43, image: "http://i.imgur.com/DjxxS6X.jpg", video_url: "https://www.youtube.com/watch?v=O17LfqKMSNI", liked: false, disliked: false, genre_id: action_adventure.id)
game5 = Game.create!(title: "Prince of Persia: The Two Thrones", description: "You are the Prince of Persia. Upon return to your kingdom, you find your homeland ravaged by war. Play two sides of a divided soul – the Prince and his darker self. Only by unleashing their distinct powers and skills can you cast off your fugitive existence and restore peace to your land, and to your soul.", likes: 23, dislikes: 73, image: "https://www.mobygames.com/images/covers/l/77386-prince-of-persia-the-two-thrones-windows-front-cover.jpg", video_url: "https://www.youtube.com/watch?v=eLjSGR_nGlw", liked: false, disliked: false, genre_id: fantasy.id)
game6 = Game.create!(title: "The Crew 2", description: "The Crew® 2 - SPECIAL EDITION includes: DODGE CHALLENGER SRT® DEMON Interception Unit PORSCHE 911 SPEEDSTER", likes: 565, dislikes: 345, image: "https://cdn.shopify.com/s/files/1/0747/3829/products/mL2096_1819a3d8-bf5f-46bd-9a96-bcb10988d39a_1024x1024.jpg?v=1571445517", video_url: "https://www.youtube.com/watch?v=D3Enbdr_V-4", liked: false, disliked: false, genre_id: racing.id)
game7 = Game.create!(title: "Tekken 7", description: "TEKKEN 7 was initially release in 2015, only in arcade machines in Japan. With the years, this version of the game expanded and now we have it available in different consoles and platforms. You can download TEKKEN 7 right now through our page, and we will explain to you step by step how to do this.", likes: 45, dislikes: 34, image: "http://orig07.deviantart.net/19ba/f/2017/009/3/f/tekken_7_poster_by_nozarex-dausc9n.png", video_url: "https://www.youtube.com/watch?v=kKLCwDg2JLA", liked: false, disliked: false, genre_id: arcade.id)
game8 = Game.create!(title: "Splinter Cell Conviction", description: "The Deluxe Edition includes Infiltration Mode, Shadow Armor and 3 bonus weapons.", likes: 75, dislikes: 3, image: "https://tse4.mm.bing.net/th?id=OIP.EWVK-9ox2QXUPWb5ZgDQLgHaKT&pid=Api&P=0&w=300&h=300", video_url: "https://www.youtube.com/watch?v=wYGoFH6bWXg", liked: false, disliked: false, genre_id: shooting.id)
game9 = Game.create!(title: "Hyper Scape", description: "Hyper Scape™ is the one and only urban futuristic free-to-play battle royale where 100 contenders engage in first person close-quarters combat and fast-paced matches to become the next global superstar.", likes: 89, dislikes: 34, image: "https://howlongtobeat.com/games/81731_Hyper_Scape.jpg", video_url: "https://www.youtube.com/watch?v=BYcjk4skm2M", liked: false, disliked: false, genre_id: action.id)
game10 = Game.create!(title: "Riders Republic", description: "Jump into the Riders Republic massive multiplayer playground! Grab your bike, skis, snowboard, or wingsuit and explore an open world sports paradise where the rules are yours to make—or break.", likes: 245, dislikes: 34, image: "https://media.senscritique.com/media/000019816369/source_big/Riders_Republic.png", video_url: "https://www.youtube.com/watch?v=tasjYid5Yec", liked: false, disliked: false, genre_id: racing.id)
game11 = Game.create!(title: "Tom Clancy's The Division 2", description: "Lead a team of elite agents into a post-pandemic Washington, DC, to restore order and prevent the collapse of the city.", likes: 978, dislikes: 85, image: "http://www.pcmrace.com/wp-content/uploads/2018/08/The-Division-2-Poster.jpg", video_url: "https://www.youtube.com/watch?v=sli7AbX2bEk", liked: false, disliked: false, genre_id: adventure.id)
game12 = Game.create!(title: "Anno 1800", description: "Anno 1800™ – Lead the Industrial Revolution!", likes: 65, dislikes: 34, image: "http://www.newgamesbox.net/wp-content/uploads/2018/08/Anno-1800-Free-Download-Full-Version-PC-Game-Setup.jpg", video_url: "https://www.youtube.com/watch?v=UowsqoV0egc", liked: false, disliked: false, genre_id: fantasy.id)
game13 = Game.create!(title: "GTA VICE CITY 6", description: "Grand Theft Auto 6 is an open world, action-adventure video game developed by Rockstar North and published by Rockstar Games. It was released on August 8, 2015 for the PlayStation 3, PlayStation 4, Xbox One and MyLife II. ", likes: 96, dislikes: 32, image: "https://i.redd.it/h0vhi4c40wp41.png", video_url: "https://www.youtube.com/watch?v=MUvwkA7O0e8", liked: false, disliked: false, genre_id: thriller.id)
game14 = Game.create!(title: "Fornite", description: "Fortnite on mobile brings everything you love about the game onto your favorite mobile device. Join and Chat with your friends, regardless of what platform they're on, and make progress on your Battle Pass the same way you would on a PC or console!", likes: 456, dislikes: 85, image: "http://cultureposters.com/wp-content/uploads/2019/08/fortnite.jpg", video_url: "https://www.youtube.com/watch?v=z5y2BMxrAqw", liked: false, disliked: false, genre_id: shooting.id)
game15 = Game.create!(title: "Mortal Kombat 11", description: "Mortal Kombat 11 showcases every moment of action like never before. You’ll be so close to the fight, you can feel it! Includes Mortal Kombat 11, Kombat Pack 1, Aftermath Expansion and Kombat Pack 2.", likes: 54, dislikes: 234, image: "https://cdn.shopify.com/s/files/1/0747/3829/products/mL2972_1024x1024.jpg?v=1571445675", video_url: "https://www.youtube.com/watch?v=7zwQPJmg-Kg", liked: false, disliked: false, genre_id: arcade.id)
game16 = Game.create!(title: "2K21", description: "Whether you're a serious golfer or just looking to have fun, PGA Tour 2K21 has something for everyone. Play against the pros or play with your crew. In PGA Tour 2K21, you can play by the rules or create your own and always swing with swag.", likes: 45, dislikes: 57, image: "https://mms.businesswire.com/media/20200514005023/en/791400/5/PGA_TOUR_2K21_ESRB_AGNOSTIC.jpg?download=1", video_url: "https://www.youtube.com/watch?v=LUdPHjOaKrk", liked: false, disliked: false, genre_id: sports.id)




puts "seeding games completed"

puts "seeding data completed"



