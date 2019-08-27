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

  [ 4,
    "1537988634077-c99a6f91e7b5_xpax06.jpeg",

    "Chilli Pepper",
    "Chillies are not so difficult to grow but a lot of times people forget how sensitive they are when it comes to lack of water. If you want to add chillies to your garden make sure your chillies have plenty of water and never dry out.",
    "Like most plants they grow better in rich soils and produce more fruit but if you use plenty of mulch and compost in your garden the chillies will grow just fine.",
    5,
    "February till May",
    "July till October",
    "135701_tgtimr.svg"
    ],

  [ 5,
    "slack-imgs.com_e6r9xj.jpeg",

    "Fennel",
    "Did you know that fennel is both a vegetable and an herb, depending on which variety you grow. it's also very easy to grow!",
    "Fennel needs a location with full sun that is close to a water source. The soil should be organically rich and on the acidic side, so amend it with compost if necessary.",
    2,
    "June till mid. july",
    "July till beginning October",
    "fennel_gisesm.png"
    ],

  [ 6,
    "1558717738-12f5dde036a7_gm8pqi.jpeg",

    "Leek",
    "Leeks are a flavoursome winter vegetable and not so difficult to take care of. They also don’t require much room in the garden.",
    "sunny spot in the soil that is rich and well-drained.",
    1,
    "May till mid. June",
    "September till end December",
    "vegetable_colour-11-512_txltym.png"
    ],


  [ 7,
    "1474591424615-7fe467c7fac9_tqku65.jpeg",

    "Pumpkin",
    "Pumpkins are not difficult to grow. They do best when the seeds are planted directly in the ground.",
    "The pumkin is one of those veggies that prefers full sun but could do with partial shade.
    They have deep roots and are normally quite capable of finding their own water within the soil, but in very dry periods some supplementary watering may be required.",
    4,
    "June",
    "mid. September till mid. October",
    "f80f98449ed9cc2a90b03504a249ebca-pumpkin-icon-flat-by-vexels_ihxxud.png"
    ],

  [ 8,
    "1495026206962-e8b160431ffe_ye4i74.jpeg",

    "Zucchini",
    " A lot of gardeners will tell you that zucchini grows itself. And yes it's true they almost grow by them selves but they can use a hand once in a while.",
    "The zucchini prefers acidic soil.",
    4,
    "May mid. June",
    "August till beginning October",
    "1515034_rxu3qo.svg"
    ],

  [ 9,
    "1535915190037-fe793850a5cb_i8pnfw.jpeg",

    "Pepper",
    "Peppers are a breeze to grow. They are a chock-full of good flavor and nutrition.",
    "Pepper plants require full sun to produce nice fruits. The soil should be well-draining and rich in organic matter. ",
    3,
    "May till mid. June",
    "Mid. July till mid. October",
    "323-512_e9qbum.png"
    ],


  [ 10,
    "1554196967-99af0c02a92a_dsnofu.jpeg",

    "Strawberry",
    " Strawberries are one of the most popular grown in own garden fruits! They are super easy to grow and don't need a lot of space.",
    "Strawberries love sunlight and need full sun to produce the largest yields.
    Strawberry plants need constant moisture to thrive, the plants will rot if left in standing water due to poor site drainage. So chose the right place for your strawberries. ",
    4,
    "Mid. September till end of October.",
    "June till mid July.",
    "135717_vtgada.svg"
    ],


  [ 11,
    "1556801712-76c8eb07bbc9_yppwm6.jpeg",

    "Lettuce",
    "Lettuce is highly productive in limited space it's also called one of the more 'care-free' crops which might give you an
    indication about how easy lettuce is to take care of.",
    "For the lettuce the best placement is a soil that drains well, and yet retains some moisture ",
    1,
    "April till mid. September",
    "Mid. May till end October",
    "1515026_bigopj.svg"
    ],

  [ 12,
    "1510627498534-cf7e9002facc_qcjthg.jpeg",

    "Cauliflower",
    " The cauliflower is not the easiest to grow because it does not tolerate the heat or cold well. It requires consistently cool temperatures.",
    "The cauliflower needs a deep rich soil and must be kept well watered throughout the season.",
    2,
    "Mid. April till mid. May",
    "July till mid. October",
    "1135562_hmhteq.png"
    ],

  [ 13,
    "1528607950896-30d92379b592_bsxnkz.jpeg",

    "Rhubarb",
    "Rhubarb is easy to grow, but needs cool weather to thrive. One thing that might be interested is that the The leaves of the rhubarb plant are poisonous, so don't try to cook them.",
    "Choose a site that is well-drained, fertile, and preferably in full sunlight.
    Water your plant well. It needs sufficient moisture during the summer.",
    3,
    "January till February",
    "Mid. April till mid. June",
    "1135610_dmvtaw.svg"
    ],

  [ 14,
    "1472653525502-fc569e405a74_bozw2v.jpeg",

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
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off."
  ],
  [ 1,
    "Hi, Don't forget to water your beetroots!"
  ],
  [ 1,
    "Hi, Check if the beetroot plants need a thin (when there around 2 inches high) you just pinch them off."
  ],
  [ 1,
    "Take out the weed around the plant"
  ],
  [ 2,
    "Hey there, give your tomato plant a bit of water!"
  ],
  [ 2,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off.!"
  ],
  [ 2,
    " Hello, You should Remove the dead, diseased or just unnecessary leaves and stems from the tomato plant "
  ],
  [ 2,
    "Take out the weed around the plant"
  ],
  [ 3,
    "Hey, I think your cucumber plant might be thursty."
  ],
  [ 3,
    "Thin cucumber plants"
  ],
  [ 3,
    "Take out the weed around the plant"
  ],
  [ 3,
     "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off."
  ],
  [ 4,
    "Coucou, Don't forget to water your Chilli pepper plant!"
  ],
  [ 4,
    "Take out the weed around the plant"
  ],
  [ 5,
    "Hey, I think your fennel plant might be thursty!"
  ],
  [5,
    "Check if blooms begin to appear on your fennel plant, you can either pinch them to prevent the plant from going to seed, or just go ahead and let it flower, to attract beneficial insects"
  ],
  [5,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off."
  ],
  [5,
    "Take out the weed around the plant"
  ],
  [6,
    "Hey, Give some water to your leek plant."
  ],
  [6,
    "Take out the weed around the plant"
  ],

  [6,
    "  After a few weeks, you can improve the length of white stem by blanching the plant above ground. Wrap about 10cm (4in) of the base of the plant in newspaper and then pull dry soil around the stem to exclude light. Be careful not to introduce soil between the leaves as this can make for gritty eating."
  ],
  [7,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off."
  ],
  [8,
    "Hey, Give some water to your zucchini plant."
  ],
  [8,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off."
  ],
  [9,
    "Hey, Give some water to your pepper plant."
  ],
  [9,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off."
  ],
  [10,
    "Hey, Give some water to your strawberry plant."
  ],
  [10,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off."
  ],
  [11,
    "Hey, Give some water to your lettuce plant."
  ],
  [11,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off."
  ],
  [12,
    "Hey, Give some water to your cauliflower plant."
  ],
  [12,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off."
  ],
  [13,
    "Hey, Give some water to your rhubarb plant."
  ],
  [13,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off."
  ],
  [14,
    "Hey, Give some water to your carrot plant."
  ],
  [14,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off."
  ]
]


tasks_list.each do |plant_id, description|

  Task.create!( plant_id: plant_id ,description: description )

end

puts "Creating Users-tasks"

puts "Done!"
