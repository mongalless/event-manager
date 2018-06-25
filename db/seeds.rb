# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
include Faker

tags = ["#vendor ", "#outsource ", "#top_priority ", "#low_priority ", "#developing ", "#modificating "]

25.times do
  Event.create( 
    title: Faker::SiliconValley.app + ", " + Faker::SiliconValley.company,
    start_date: Date.today,
    review_date: 1.week.from_now,
    end_date: 2.week.from_now,
    tags: "#developer_tags " + tags[rand(0..1)] + tags[rand(2..3)] + tags[rand(4..5)],
    completed: Faker::Boolean.boolean
  )
end