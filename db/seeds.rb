# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

plants_list = [
  [ "https://images.unsplash.com/photo-1506807803488-8eafc15316c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1867&q=80",
    "Beetroot",
    "Beets, Beta vulgaris, are herbacious biennial root vegetables in the family Chenopodiaceae grown for their edible root. The plant is usually erect with a long main root and a rosette of leaves growing on stems. The leaves are oval in shape, arranged alternately on the stem and grow 20–40 cm (7.9–15.7 in) in length. The roots are usually red in color. The plant produces sessile green flowers and can reach 1–2 m (3.3–6.6 ft) in height. Beets are usually grown as annual plants, harvested after one growing season. Beets may also be referred to as beetroot, garden beet or spinach beet and originated from the Mediterranean.",
    2,
    "End May till mid July",
    "August till October" ],

  [ "https://images.unsplash.com/photo-1467020323552-36f7bf0e30e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
    "Cheery tomatoes",
    "La tomate cerise est l’un des fruits/légumes, les plus faciles à cultiver car elles poussent rapidement, peuvent se cultiver aussi bien en terre qu’en pot sur un balcon ou une terrasse et peuvent être récoltées tout au long de l’été au gré des besoins.",
    4,
    "From mi May",
    "From July till end of September" ],

  [ "https://images.unsplash.com/photo-1518568403628-df55701ade9e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
    "Cucumber",
    "The cucumber is a creeping vine that roots in the ground and grows up trellises or other supporting frames, wrapping around supports with thin, spiraling tendrils.[1] The plant may also root in a soilless medium and will sprawl along the ground if it does not have supports. The vine has large leaves that form a canopy over the fruits. The fruit of typical cultivars of cucumber is roughly cylindrical, but elongated with tapered ends, and may be as large as 60 centimeters (24 in) long and 10 centimeters (3.9 in) in diameter.[citation needed] Botanically speaking, the cucumber is classified as a pepo, a type of botanical berry with a hard outer rind and no internal divisions. Much like tomato and squash, it is often perceived, prepared and eaten as a vegetable. Cucumber fruits consist of 95% water (see nutrition table).",
    2,
    "June",
    "August till mid October" ],

  [ "https://images.unsplash.com/photo-1533213570495-60f06dc31921?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
    "Eggplant",
    "spongy, absorbent fruit is used in various cuisines. Although often considered a vegetable, it is a berry by botanical definition. As a member of the genus Solanum, it is related to tomato and potato. Like the tomato, its skin and seeds can be eaten, but, like the potato, it is usually eaten cooked. Eggplant is nutritionally low in macronutrient and micronutrient content, but the capability of the fruit to absorb oils and flavors into its flesh through cooking expands its use in the culinary arts.",
    3,
    "May",
    "Mid july till end of september" ],

  [ "https://images.unsplash.com/photo-1527619635633-2f162c423935?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=60",
    "Chilli Pepper",
    "Tous les piments sont originaires du sud de l’Amérique du Nord, d’Amérique centrale, et d’Amérique du Sud. Ramené en Europe par Christophe Colomb, le piment, brulant à l’origine, a été sélectionné afin d’obtenir des variétés de plus en plus douces : les poivrons. De leur côté, les piments brulants, utilisés comme condiments se répandent sur tout le globe et se diversifient également en variétés, des plus douces aux plus piquantes.",
    5,
    "Februar till May",
    "July till October" ],

  [ "https://www.reluctantgourmet.com/wp-content/uploads/2010/03/1f927a512a9909833c7b57ab40062fc5.jpg",
    "Fennel",
    "(Foeniculum vulgare), perennial herb of the carrot family (Apiaceae) grown for its edible shoots, leaves, and seeds. Native to southern Europe and Asia Minor, fennel is cultivated in temperate regions worldwide and is considered an invasive species in Australia and parts of the United States. All parts of the plant are aromatic and used in flavouring, and the bulblike stem base of Florence fennel (variety azoricum) and the blanched shoots are eaten as a vegetable. The seeds and extracted oil are suggestive of anise in aroma and taste and are used for scenting soaps and perfumes and for flavouring candies, liqueurs, medicines, and foods, particularly pastries, sweet pickles, and fish.",
    2,
    "June till mid. july",
    "July till beginning October" ]

  ]

plants_list.each do |photo_url, name, description, price, plant_date, harvest_date|
  Plant.create!( photo_url: photo_url, name: name, description: description, price: price, plant_date: plant_date, harvest_date: harvest_date )
end

