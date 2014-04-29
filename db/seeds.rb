# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([
  {
    name: "Taylor Smith",
    email: "taylor@themakersquare.com"
  },
  {
    name: "Mike Ornellas",
    email: "mike@themakersquare.com"
  }
  ])

Video.create([
  {
    title: "Gladiator",
    description: "A great movie",
    youtube_id: "rNdKBPcVGJI",
    user_id: 1
  },
  {
    title: "Pacific Rim",
    description: "Giant robots fighting giant sea monsters",
    youtube_id: "SSNU6t0pmkw",
    user_id: 2
  },
  {
    title: "Frozen",
    description: "Cold 3D Animation",
    youtube_id: "FLzfXQSPBOg",
    user_id: 1
  }
  ])

Comment.create([
  {
    video_id: 1,
    content: "Wow, this movie is amazing"
  },
  {
    video_id: 1,
    content: "Are you kidding me?!"
  },
  {
    video_id: 2,
    content: "First comment"
  },
  {
    video_id: 2,
    content: "Second comment"
  }
  ])
