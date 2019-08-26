puts "Cleaning DB"
Task.destroy_all
Plant.destroy_all
Garden.destroy_all
User.destroy_all

puts "Creating Users"



User.create!(email: "max@gmail.com", password: "123456",username: "Max")
User.create!(email: "alex@gmail.com", password: "123456", username: "Alex")
User.create!(email: "ejdat@gmail.com", password: "123456", username: "Ej")


puts "Gardens were created automatically"

puts "Creating Plants"

plants_list = [
  [ 1,
    "Beetroot",
    "Beetroot are easy to grow and ideal for anyone new to vegetable gardening.",
    "Beetroot will grow in any well-drained garden soil. ",
    2,
    "End March till mid July",
    "August till October",
    "1899092_mnahdg.svg"
    ],


  [ 2,
    "Cherry tomatoes",
    "Cherry tomatoes, are the easiest to grow out of all the tomatoes. The plant grows rapidly, so you will need to have something to support the vines once they begin to grow long. You can use either a tomato cage or wooden stakes.",
    "a sunny, well-drained part of your garden is the best for your cherry tomatoes.",
     4,
    "From mi May",
    "From July till end of September",
    "135702_sao20i.svg"
  ],

  [ 3,
    "Cucumber",
    "The cucumber is an easy-care vegetable and they'll grow quickly.",
    "The cucumber loves a soil that has loads of sun, light and water ",
    2,
    "June",
    "August till mid October",
    "vegetable_colour-15-512_yjbukp.png"
    ],

  [ 5,
    "Chilli Pepper",
    "Chillies are not so difficult to grow but a lot of times people forget how sensitive they are when it comes to lack of water. If you want to add chillies to your garden make sure your chillies have plenty of water and never dry out.",
    "Like most plants they grow better in rich soils and produce more fruit but if you use plenty of mulch and compost in your garden the chillies will grow just fine.",
    5,
    "Februar till May",
    "July till October",
    "135701_tgtimr.svg"
    ],

  [ 6,
    "Fennel",
    "Did you know that fennel is both a vegetable and an herb, depending on which variety you grow. it's also very easy to grow!",
    "Fennel needs a location with full sun that is close to a water source. The soil should be organically rich and on the acidic side, so amend it with compost if necessary.",
    2,
    "June till mid. july",
    "July till beginning October",
    "fennel_gisesm.png"
    ],

  [ 7,
    "Leek",
    "Leeks are a flavoursome winter vegetable and not so difficult to take care of. They also don’t require much room in the garden.",
    "sunny spot in the soil that is rich and well-drained.",
    1,
    "May till mid. June",
    "September till end December",
    "vegetable_colour-11-512_txltym.png"
    ],

  [ 8,
    "Pumpkin",
    "Pumpkins are not difficult to grow. They do best when the seeds are planted directly in the ground.",
    "The pumkin is one of those veggies that prefers full sun but could do with partial shade.
    They have deep roots and are normally quite capable of finding their own water within the soil, but in very dry periods some supplementary watering may be required.",
    4,
    "June",
    "mid. September till mid. October",
    "f80f98449ed9cc2a90b03504a249ebca-pumpkin-icon-flat-by-vexels_ihxxud.png"
    ],

  [ 9,
    "Zucchini",
    " A lot of gardeners will tell you that zucchini grows itself. And yes it's true they almost grow by them selves but they can use a hand once in a while.",
    "The zucchini prefers acidic soil.",
    4,
    "May mid. June",
    "August till beginning October",
    "1515034_rxu3qo.svg"
    ],

  [ 10,
    "Pepper",
    "Peppers are a breeze to grow. They are a chock-full of good flavor and nutrition.",
    "Pepper plants require full sun to produce nice fruits. The soil should be well-draining and rich in organic matter. ",
    3,
    "May till mid. June",
    "Mid. July till mid. October",
    "323-512_e9qbum.png"
    ],

  [ 11,
    "Strawberry",
    " Strawberries are one of the most popular grown in own garden fruits! They are super easy to grow and don't need a lot of space.",
    "Strawberries love sunlight and need full sun to produce the largest yields.
    Strawberry plants need constant moisture to thrive, the plants will rot if left in standing water due to poor site drainage. So chose the right place for your strawberries. ",
    4,
    "Mid. September till end of October.",
    "June till mid July.",
    "135717_vtgada.svg"
    ],

  [ 12,
    "Lettuce",
    "Lettuce is highly productive in limited space it's also called one of the more 'care-free' crops which might give you an
    indication about how easy lettuce is to take care of.",
    "For the lettuce the best placement is a soil that drains well, and yet retains some moisture ",
    1,
    "April till mid. September",
    "Mid. May till end October",
    "1515026_bigopj.svg"
    ],
  [ 13,
    "Cauliflower",
    " The cauliflower is not the easiest to grow because it does not tolerate the heat or cold well. It requires consistently cool temperatures.",
    "The cauliflower needs a deep rich soil and must be kept well watered throughout the season.",
    2,
    "Mid. April till mid. May",
    "July till mid. October",
    "1135562_hmhteq.png"
    ],
  [ 14,
    "Rhubarb",
    "Rhubarb is easy to grow, but needs cool weather to thrive. One thing that might be interested is that the The leaves of the rhubarb plant are poisonous, so don't try to cook them.",
    "Choose a site that is well-drained, fertile, and preferably in full sunlight.
    Water your plant well. It needs sufficient moisture during the summer.",
    3,
    "Jan till February",
    "Mid. April till mid. June",
    "1135610_dmvtaw.svg"
    ],
  [ 15,
    "carrot",
    "carrots are one of the easiest vegetables to grow in the cooler climates.",
    "Carrots need very fine soil without any large stones or obstacles. The soil should be light and sandy if possible and not recently manured. Carrots are bad competitors with weeds so you want as weed free an environment as possible. ",
    2,
    "March till July",
    "July till November",
    "135687_xauv3b.svg"
    ]
]

plants_list.each do |id, name, description, description_details, price, plant_date, harvest_date, logo_url|
  Plant.create!(id: id, name: name, description: description, description_details: description_details, price: price, plant_date: plant_date, harvest_date: harvest_date, logo_url: logo_url)

end

puts "Creating Tasks"

tasks_list = [
  [ 1,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off.",
    "Monday evening",
    false],

  [ 2,
    "Hey there, Water the plant!",
    "Every evening",
    false],

  [ 3,
    "Hey you, go and check your plant for any bad leaves.",
    "Wednesday",
    false],

  [ 3,
    "Take out the weed around the plant",
    "Friday",
    false],

  [ 1,
    "Coucou, Check the soil of your plant",
    "thursday",
    false],

    [ 2,
    "Take out the weed around the plant",
    "Wednesday",
    false],

     [ 1,
    "Give love to your plant!",
    "Wednesday",
    false]
]

tasks_list.each do |plant_id, description, date, validated|

  Task.create!( plant_id: plant_id ,description: description, date: date)

end

puts "Done!"
