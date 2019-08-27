puts "Cleaning DB"
UserTask.destroy_all
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
    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": true,
    "may": true,
    "jun": true,
    "jul": true,
    "aug": false,
    "sep": false,
    "oct": false,
    "nov": false,
    "dec": false,
    },

    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": false,
    "may": false,
    "jun": false,
    "jul": false,
    "aug": true,
    "sep": true,
    "oct": true,
    "nov": false,
    "dec": false,
    },
    "1899092_mnahdg.svg"
    ],


  [ 2,
    "Cherry tomatoes",
    "Cherry tomatoes, are the easiest to grow out of all the tomatoes. The plant grows rapidly, so you will need to have something to support the vines once they begin to grow long. You can use either a tomato cage or wooden stakes.",
    "a sunny, well-drained part of your garden is the best for your cherry tomatoes.",
     4,
     {"jan": false,
    "feb": false,
    "mar": false,
    "apr": true,
    "may": true,
    "jun": true,
    "jul": false,
    "aug": false,
    "sep": false,
    "oct": false,
    "nov": false,
    "dec": false,
    },

    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": false,
    "may": false,
    "jun": false,
    "jul": true,
    "aug": true,
    "sep": true,
    "oct": false,
    "nov": false,
    "dec": false,
    },
    "135702_sao20i.svg"
  ],

  [ 3,
    "Cucumber",
    "The cucumber is an easy-care vegetable and they'll grow quickly.",
    "The cucumber loves a soil that has loads of sun, light and water ",
    2,
    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": false,
    "may": false,
    "jun": true,
    "jul": false,
    "aug": false,
    "sep": false,
    "oct": false,
    "nov": false,
    "dec": false,
    },

    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": false,
    "may": false,
    "jun": false,
    "jul": false,
    "aug": true,
    "sep": true,
    "oct": true,
    "nov": false,
    "dec": false,
    },
    "June",
    "August till mid October",
    "vegetable_colour-15-512_yjbukp.png"
    ],

  [ 4,

    "Chilli Pepper",
    "Chillies are not so difficult to grow but a lot of times people forget how sensitive they are when it comes to lack of water. If you want to add chillies to your garden make sure your chillies have plenty of water and never dry out.",
    "Like most plants they grow better in rich soils and produce more fruit but if you use plenty of mulch and compost in your garden the chillies will grow just fine.",
    5,

    {"jan": false,
    "feb": true,
    "mar": true,
    "apr": true,
    "may": true,
    "jun": false,
    "jul": false,
    "aug": false,
    "sep": false,
    "oct": false,
    "nov": false,
    "dec": false,
    },

    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": false,
    "may": false,
    "jun": false,
    "jul": true,
    "aug": true,
    "sep": true,
    "oct": true,
    "nov": false,
    "dec": false,
    },
    "135701_tgtimr.svg"
    ],

  [ 5,

    "Fennel",
    "Did you know that fennel is both a vegetable and an herb, depending on which variety you grow. it's also very easy to grow!",
    "Fennel needs a location with full sun that is close to a water source. The soil should be organically rich and on the acidic side, so amend it with compost if necessary.",
    2,

    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": false,
    "may": false,
    "jun": true,
    "jul": true,
    "aug": false,
    "sep": false,
    "oct": false,
    "nov": false,
    "dec": false,
    },
    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": false,
    "may": false,
    "jun": false,
    "jul": true,
    "aug": true,
    "sep": true,
    "oct": true,
    "nov": false,
    "dec": false,
    },
    "fennel_gisesm.png"
    ],

  [ 6,

    "Leek",
    "Leeks are a flavoursome winter vegetable and not so difficult to take care of. They also don’t require much room in the garden.",
    "sunny spot in the soil that is rich and well-drained.",
    1,
    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": false,
    "may": true,
    "jun": true,
    "jul": false,
    "aug": false,
    "sep": false,
    "oct": false,
    "nov": false,
    "dec": false,
    },
    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": false,
    "may": false,
    "jun": false,
    "jul": false,
    "aug": false,
    "sep": true,
    "oct": true,
    "nov": true,
    "dec": true,
    },
    "vegetable_colour-11-512_txltym.png"
    ],


  [ 7,

    "Pumpkin",
    "Pumpkins are not difficult to grow. They do best when the seeds are planted directly in the ground.",
    "The pumkin is one of those veggies that prefers full sun but could do with partial shade.
    They have deep roots and are normally quite capable of finding their own water within the soil, but in very dry periods some supplementary watering may be required.",
    4,
    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": false,
    "may": false,
    "jun": true,
    "jul": false,
    "aug": false,
    "sep": false,
    "oct": false,
    "nov": false,
    "dec": false,
    },
    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": false,
    "may": false,
    "jun": false,
    "jul": false,
    "aug": false,
    "sep": true,
    "oct": true,
    "nov": false,
    "dec": false,
    },
    "f80f98449ed9cc2a90b03504a249ebca-pumpkin-icon-flat-by-vexels_ihxxud.png"
    ],

  [ 8,

    "Zucchini",
    " A lot of gardeners will tell you that zucchini grows itself. And yes it's true they almost grow by them selves but they can use a hand once in a while.",
    "The zucchini prefers acidic soil.",
    4,
    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": false,
    "may": true,
    "jun": true,
    "jul": false,
    "aug": false,
    "sep": false,
    "oct": false,
    "nov": false,
    "dec": false,
    },

    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": false,
    "may": false,
    "jun": false,
    "jul": false,
    "aug": true,
    "sep": true,
    "oct": true,
    "nov": false,
    "dec": false,
    },
    "1515034_rxu3qo.svg"
    ],

  [ 9,

    "Pepper",
    "Peppers are a breeze to grow. They are a chock-full of good flavor and nutrition.",
    "Pepper plants require full sun to produce nice fruits. The soil should be well-draining and rich in organic matter. ",
    3,
    "May till mid. June",
    "Mid. July till mid. October",
    "323-512_e9qbum.png"
    ],


  [ 10,

    "Strawberry",
    " Strawberries are one of the most popular grown in own garden fruits! They are super easy to grow and don't need a lot of space.",
    "Strawberries love sunlight and need full sun to produce the largest yields.
    Strawberry plants need constant moisture to thrive, the plants will rot if left in standing water due to poor site drainage. So chose the right place for your strawberries. ",
    4,
    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": false,
    "may": false,
    "jun": false,
    "jul": false,
    "aug": false,
    "sep": true,
    "oct": true,
    "nov": false,
    "dec": false,
    },
    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": false,
    "may": false,
    "jun": true,
    "jul": true,
    "aug": false,
    "sep": false,
    "oct": false,
    "nov": false,
    "dec": false,
    },
    "135717_vtgada.svg"
    ],


  [ 11,

    "Lettuce",
    "Lettuce is highly productive in limited space it's also called one of the more 'care-free' crops which might give you an
    indication about how easy lettuce is to take care of.",
    "For the lettuce the best placement is a soil that drains well, and yet retains some moisture ",
    1,
    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": true,
    "may": true,
    "jun": true,
    "jul": true,
    "aug": true,
    "sep": true,
    "oct": false,
    "nov": false,
    "dec": false,
    },
    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": false,
    "may": true,
    "jun": true,
    "jul": true,
    "aug": true,
    "sep": true,
    "oct": false,
    "nov": false,
    "dec": false,
    },
    "1515026_bigopj.svg"
    ],

  [ 12,

    "Cauliflower",
    " The cauliflower is not the easiest to grow because it does not tolerate the heat or cold well. It requires consistently cool temperatures.",
    "The cauliflower needs a deep rich soil and must be kept well watered throughout the season.",
    2,
    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": true,
    "may": true,
    "jun": false,
    "jul": false,
    "aug": false,
    "sep": false,
    "oct": false,
    "nov": false,
    "dec": false,
    },
    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": false,
    "may": false,
    "jun": false,
    "jul": true,
    "aug": true,
    "sep": true,
    "oct": true,
    "nov": false,
    "dec": false,
    },
    "1135562_hmhteq.png"
    ],

  [ 13,

    "Rhubarb",
    "Rhubarb is easy to grow, but needs cool weather to thrive. One thing that might be interested is that the The leaves of the rhubarb plant are poisonous, so don't try to cook them.",
    "Choose a site that is well-drained, fertile, and preferably in full sunlight.
    Water your plant well. It needs sufficient moisture during the summer.",
    3,
    {"jan": true,
    "feb": true,
    "mar": false,
    "apr": false,
    "may": false,
    "jun": false,
    "jul": false,
    "aug": false,
    "sep": false,
    "oct": false,
    "nov": false,
    "dec": false,
    },
    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": true,
    "may": true,
    "jun": true,
    "jul": false,
    "aug": false,
    "sep": false,
    "oct": false,
    "nov": false,
    "dec": false,
    },
    "1135610_dmvtaw.svg"
    ],

  [ 14,

    "carrot",
    "carrots are one of the easiest vegetables to grow in the cooler climates.",
    "Carrots need very fine soil without any large stones or obstacles. The soil should be light and sandy if possible and not recently manured. Carrots are bad competitors with weeds so you want as weed free an environment as possible. ",
    2,
    {"jan": false,
    "feb": false,
    "mar": true,
    "apr": true,
    "may": true,
    "jun": true,
    "jul": true,
    "aug": false,
    "sep": false,
    "oct": false,
    "nov": false,
    "dec": false,
    },
    {"jan": false,
    "feb": false,
    "mar": false,
    "apr": false,
    "may": false,
    "jun": false,
    "jul": true,
    "aug": true,
    "sep": true,
    "oct": true,
    "nov": true,
    "dec": false,
    },
    "135687_xauv3b.svg"
    ]
]

plants_list.each do |id, name, description, description_details, price, plant_date, harvest_date, logo_url|
  Plant.create!(id: id, name: name, description: description, description_details: description_details, price: price, plant_date: plant_date, harvest_date: harvest_date, logo_url: logo_url)

end

puts "Creating Tasks"

tasks_list = [
  [ 1,
    "sow the beetroot seeds",
    "1899092_mnahdg.svg"
  ],
  [ 1,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off.",
    "1899092_mnahdg.svg"
  ],
  [ 1,
    "Hi, Don't forget to water your beetroots!",
    "1899092_mnahdg.svg"
  ],
  [ 1,
    "Hi, Check if the beetroot plants need a thin (when there around 2 inches high) you just pinch them off.",
    "1899092_mnahdg.svg"
  ],
  [ 1,
    "Take out the weed around the plant",
    "1899092_mnahdg.svg"
  ],
  [ 2,
    "sow the tomato seeds",
    "135702_sao20i.svg"
  ],
  [ 2,
    "Hey there, give your tomato plant a bit of water!",
    "135702_sao20i.svg"
  ],
  [ 2,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off.!",
    "135702_sao20i.svg"
  ],
  [ 2,
    " Hello, You should Remove the dead, diseased or just unnecessary leaves and stems from the tomato plant ",
    "135702_sao20i.svg"
  ],
  [ 2,
    "Take out the weed around the plant",
    "135702_sao20i.svg"
  ],
  [ 3,
    "sow the cucumber seeds",
    "vegetable_colour-15-512_yjbukp.png"
  ],
  [ 3,
    "Hey, I think your cucumber plant might be thursty.",
    "vegetable_colour-15-512_yjbukp.png"
  ],
  [ 3,
    "Thin cucumber plants",
    "vegetable_colour-15-512_yjbukp.png"
  ],
  [ 3,
    "Take out the weed around the plant",
    "vegetable_colour-15-512_yjbukp.png"
  ],
  [ 3,
     "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off.",
     "vegetable_colour-15-512_yjbukp.png"
  ],
  [ 4,
    "sow the chilli seeds",
    "135701_tgtimr.svg"
  ],
  [ 4,
    "Hello, Don't forget to water your chilli pepper plant!",
    "135701_tgtimr.svg"
  ],
  [ 4,
    "Take out the weed around the plant",
    "135701_tgtimr.svg"
  ],
  [ 5,
    "sow the fennel seeds",
    "fennel_gisesm.png"
  ],
  [ 5,
    "Hey, I think your fennel plant might be thursty!",
    "fennel_gisesm.png"
  ],
  [5,
    "Check if blooms begin to appear on your fennel plant, you can either pinch them to prevent the plant from going to seed, or just go ahead and let it flower, to attract beneficial insects",
    "fennel_gisesm.png"
  ],
  [5,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off.",
    "fennel_gisesm.png"
  ],
  [5,
    "Take out the weed around the plant",
    "fennel_gisesm.png"
  ],
  [ 6,
    "sow the leek seeds",
    "vegetable_colour-11-512_txltym.png"
  ],
  [6,
    "Hey, Give some water to your leek plant.",
    "vegetable_colour-11-512_txltym.png"
  ],
  [6,
    "Take out the weed around the plant",
    "vegetable_colour-11-512_txltym.png"
  ],

  [6,
    "  After a few weeks, you can improve the length of white stem by blanching the plant above ground. Wrap about 10cm (4in) of the base of the plant in newspaper and then pull dry soil around the stem to exclude light. Be careful not to introduce soil between the leaves as this can make for gritty eating.",
    "vegetable_colour-11-512_txltym.png"
  ],
  [ 7,
    "sow the pumpkin seeds",
    "f80f98449ed9cc2a90b03504a249ebca-pumpkin-icon-flat-by-vexels_ihxxud.png"
  ],
  [7,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off.",
    "f80f98449ed9cc2a90b03504a249ebca-pumpkin-icon-flat-by-vexels_ihxxud.png"
  ],
  [ 8,
    "sow the zucchini seeds",
    "1515034_rxu3qo.svg"
  ],
  [8,
    "Hey, Give some water to your zucchini plant.",
    "1515034_rxu3qo.svg"
  ],
  [8,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off.",
    "1515034_rxu3qo.svg"
  ],
[ 9,
    "sow the pepper seeds",
    "323-512_e9qbum.png"
  ],
  [9,
    "Hey, Give some water to your pepper plant.",
    "323-512_e9qbum.png"
  ],
  [9,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off.",
    "323-512_e9qbum.png"
  ],
  [ 10,
    "sow the strawberry seeds",
    "135717_vtgada.svg"
  ],
  [10,
    "Hey, Give some water to your strawberry plant.",
    "135717_vtgada.svg"
  ],
  [10,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off.",
    "135717_vtgada.svg"
  ],
  [ 11,
    "sow the lettuce seeds",
    "1515026_bigopj.svg"
  ],
  [11,
    "Hey, Give some water to your lettuce plant.",
    "1515026_bigopj.svg"
  ],
  [11,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off.",
    "1515026_bigopj.svg"
  ],
  [ 12,
    "sow the cauliflower seeds",
    "1135562_hmhteq.png"
  ],
  [12,
    "Hey, Give some water to your cauliflower plant.",
    "1135562_hmhteq.png"
  ],
  [12,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off.",
    "1135562_hmhteq.png"
  ],
  [ 13,
    "sow the rhubarb seeds",
    "1135610_dmvtaw.svg"
  ],
  [13,
    "Hey, Give some water to your rhubarb plant.",
    "1135610_dmvtaw.svg"
  ],
  [13,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off.",
    "1135610_dmvtaw.svg"
  ],
  [ 14,
    "sow the carrot seeds",
    "135687_xauv3b.svg"
  ],
  [14,
    "Hey, Give some water to your carrot plant.",
    "135687_xauv3b.svg"
  ],
  [14,
    "Hi, Don't forget to check for instects caterpillars, worms,.. you can just rinse them off.",
    "135687_xauv3b.svg"
  ]
]


tasks_list.each do |plant_id, description, logo_url|

  Task.create!( plant_id: plant_id ,description: description, logo_url: logo_url )

end


puts "Done!"
