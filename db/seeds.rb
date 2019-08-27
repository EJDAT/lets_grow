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
    "bw7ddoz09yotbk3ueu5g.jpeg",
    "Beetroot",
    "Beets, Beta vulgaris, are herbacious biennial root vegetables in the family Chenopodiaceae grown for their edible root. The plant is usually erect with a long main root and a rosette of leaves growing on stems. The leaves are oval in shape, arranged alternately on the stem and grow 20–40 cm (7.9–15.7 in) in length. The roots are usually red in color. The plant produces sessile green flowers and can reach 1–2 m (3.3–6.6 ft) in height. Beets are usually grown as annual plants, harvested after one growing season. Beets may also be referred to as beetroot, garden beet or spinach beet and originated from the Mediterranean.",
    2,
    "End May till mid July",
    "August till October",
    "1899092_mnahdg.svg"
    ],


  [ 2,
    "1471194402529-8e0f5a675de6_kyav7y.jpeg",
    "Cherry tomatoes",
    "La tomate cerise est l’un des fruits/légumes, les plus faciles à cultiver car elles poussent rapidement, peuvent se cultiver aussi bien en terre qu’en pot sur un balcon ou une terrasse et peuvent être récoltées tout au long de l’été au gré des besoins.",
    4,
    "From mi May",
    "From July till end of September",
    "135702_sao20i.svg"
  ],

  [ 3,
    "xrzbewmyb5hps6wksacp.jpeg",
    "Cucumber",
    "The cucumber is a creeping vine that roots in the ground and grows up trellises or other supporting frames, wrapping around supports with thin, spiraling tendrils.[1] The plant may also root in a soilless medium and will sprawl along the ground if it does not have supports. The vine has large leaves that form a canopy over the fruits. The fruit of typical cultivars of cucumber is roughly cylindrical, but elongated with tapered ends, and may be as large as 60 centimeters (24 in) long and 10 centimeters (3.9 in) in diameter.[citation needed] Botanically speaking, the cucumber is classified as a pepo, a type of botanical berry with a hard outer rind and no internal divisions. Much like tomato and squash, it is often perceived, prepared and eaten as a vegetable. Cucumber fruits consist of 95% water (see nutrition table).",
    2,
    "June",
    "August till mid October",
    "vegetable_colour-15-512_yjbukp.png"
    ],
  [ 4,
    "1537988634077-c99a6f91e7b5_xpax06.jpeg",
    "Chilli Pepper",
    "Tous les piments sont originaires du sud de l’Amérique du Nord, d’Amérique centrale, et d’Amérique du Sud. Ramené en Europe par Christophe Colomb, le piment, brulant à l’origine, a été sélectionné afin d’obtenir des variétés de plus en plus douces : les poivrons. De leur côté, les piments brulants, utilisés comme condiments se répandent sur tout le globe et se diversifient également en variétés, des plus douces aux plus piquantes.",
    5,
    "Februar till May",
    "July till October",
    "135701_tgtimr.svg"
    ],

  [ 5,
    "slack-imgs.com_e6r9xj.jpeg",
    "Fennel",
    "(Foeniculum vulgare), perennial herb of the carrot family (Apiaceae) grown for its edible shoots, leaves, and seeds. Native to southern Europe and Asia Minor, fennel is cultivated in temperate regions worldwide and is considered an invasive species in Australia and parts of the United States. All parts of the plant are aromatic and used in flavouring, and the bulblike stem base of Florence fennel (variety azoricum) and the blanched shoots are eaten as a vegetable. The seeds and extracted oil are suggestive of anise in aroma and taste and are used for scenting soaps and perfumes and for flavouring candies, liqueurs, medicines, and foods, particularly pastries, sweet pickles, and fish.",
    2,
    "June till mid. july",
    "July till beginning October",
    "fennel_gisesm.png"
    ],
  [ 6,
    "1558717738-12f5dde036a7_gm8pqi.jpeg",
    "Leek",
    "Is a biennial garden herb (Allium porrum synonym A. ampeloprasum porrum) of the lily family. Leeks, which are native to Mediterranean countries, have been a popular food as recorded through a history of food stretching back more than 4,000 years in the Middle East. They also are nutritious, being a rich source of vitamin C, a good source of folate (vitamin B9), and a source of iron. The leek has also been a national symbol for the Welsh.",
    1,
    "May till mid. June",
    "September till end December",
    "vegetable_colour-11-512_txltym.png"
    ],

  [ 7,
    "1474591424615-7fe467c7fac9_tqku65.jpeg",
    "Pumpkin",
    "Pumpkin belongs to the family Cucurbitaceae and is grown primarily as a vegetable or ornamental plant. Pumpkin plants are short lived annual or perennial vines with branching tendrils and broad lobed leaves. The plant produces large yellow or orange flowers and a pepo fruit (berry with a thick rind) known as a pumpkin. The fruit can range greatly in size, from miniature pumpkins weighing a few ounces to giant pumpkins which can reach over 75 lbs (34 kg). The skin of the pumpkin is usually ribbed and is usually orange on color although some varieties are green, grey, yellow or red in color. Pumpkin plants are usually grown as annuals, surviving one growing season and the vines are capable of reaching 15 m (50 ft) in length if vines are allowed to root. ",
    4,
    "June",
    "mid. September till mid. October",
    "f80f98449ed9cc2a90b03504a249ebca-pumpkin-icon-flat-by-vexels_ihxxud.png"
    ],
  [ 8,
    "1495026206962-e8b160431ffe_ye4i74.jpeg",
    "Zucchini",
    "As implied by the term summer squash, zucchini’s prime season is May to August, although they are now available year-round. Summer squash has a thin, soft skin and soft edible seeds, whereas winter squash has a hard skin.
    The zucchini is a long, cylindrical vegetable, slightly smaller at the stem end, usually dark green in color. The flesh is a pale greenish-white and has a delicate, almost sweet flavor. Zucchini fruit grows quickly and is harvested within 2 to 7 days of flowering. Over-ripe zucchini and those past their prime can be bitter.",
    4,
    "May mid. June",
    "August till beginning October",
    "1515034_rxu3qo.svg"
    ],
  [ 9,
    "1535915190037-fe793850a5cb_i8pnfw.jpeg",
    "Pepper",
    "Pepper is a tender, warm-season vegetable. Pepper plants require somewhat higher temperatures, grow more slowly and are smaller than most tomato plants. Brightly colored, sweet bell pepper varieties have recently burst onto the scene. A vast range of other garden peppers (pimiento, tabasco, cayenne, chili and paprika) may be grown for food, spices or as ornamentals.",
    3,
    "May till mid. June",
    "Mid. July till mid. October",
    "323-512_e9qbum.png"
    ],

  [ 10,
    "1554196967-99af0c02a92a_dsnofu.jpeg",
    "Strawberry",
    "The garden strawberry (or simply strawberry; Fragaria × ananassa)[1] is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness. It is consumed in large quantities, either fresh or in such prepared foods as jam, juice, pies, ice cream, milkshakes, and chocolates. Artificial strawberry flavorings and aromas are also widely used in products such as candy, soap, lip gloss, perfume, and many others.",
    4,
    "Mid. September till end of October.",
    "June till mid July.",
    "135717_vtgada.svg"
    ],

  [ 11,
    "1556801712-76c8eb07bbc9_yppwm6.jpeg",
    "Lettuce",
    "annual leaf vegetable of the aster family (Asteraceae). Most lettuce varieties are eaten fresh and are commonly served as the base of green salads. Lettuce is generally a rich source of vitamins K and A, though the nutritional quality varies, depending on the variety.",
    1,
    "April till mid. September",
    "Mid. May till end October",
    "1515026_bigopj.svg"
    ],
  [ 12,
    "1510627498534-cf7e9002facc_qcjthg.jpeg",
    "Cauliflower",
    "Cauliflower is one of several vegetables in the species Brassica oleracea in the genus Brassica, which is in the family Brassicaceae. It is an annual plant that reproduces by seed. Typically, only the head is eaten – the edible white flesh sometimes called ‘crud’ (with a similar appearance to cheese curd). The cauliflower head is composed of a white inflorescence meristem. Cauliflower heads resemble those in broccoli, which differs in having flower buds as the edible portion. Brassica oleracea also includes broccoli, brussels sprouts, cabbage, collard greens, and kale, collectively called ‘cole’ crops,though they are of different cultivar groups.",
    2,
    "Mid. April till mid. May",
    "July till mid. October",
    "1135562_hmhteq.png"
    ],
  [ 13,
    "1528607950896-30d92379b592_bsxnkz.jpeg",
    "Rhubarb",
    "Rhubarb is a vegetable with a unique taste that makes it a favorite in many pies and desserts. It originated in Asia over 2,000 years ago. It was initially cultivated for its medicinal qualities, it was not until the 18th century that rhubarb was grown for culinary purposes in Britain and America. Rhubarb is often commonly mistaken to be a fruit but rhubarb is actually a close relative of garden sorrel, and is therefore a member of the vegetable family. Rhubarb is rich in vitamin C and dietary fiber.",
    3,
    "Jan till February",
    "Mid. April till mid. June",
    "1135610_dmvtaw.svg"
    ],
  [ 14,
    "1472653525502-fc569e405a74_bozw2v.jpeg",
    "carrot",
    "Rhubarb is a vegetable with a unique taste that makes it a favorite in many pies and desserts. It originated in Asia over 2,000 years ago. It was initially cultivated for its medicinal qualities, it was not until the 18th century that rhubarb was grown for culinary purposes in Britain and America. Rhubarb is often commonly mistaken to be a fruit but rhubarb is actually a close relative of garden sorrel, and is therefore a member of the vegetable family. Rhubarb is rich in vitamin C and dietary fiber.",
    2,
    "March till July",
    "July till November",
    "135687_xauv3b.svg"
    ]
]

plants_list.each do |id, photo_url, name, description, price, plant_date, harvest_date, logo_url|
  Plant.create!(id: id, photo_url: photo_url, name: name, description: description, price: price, plant_date: plant_date, harvest_date: harvest_date, logo_url: logo_url)

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
