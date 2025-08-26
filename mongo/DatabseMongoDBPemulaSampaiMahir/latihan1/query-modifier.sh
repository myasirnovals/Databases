db.products.find({}).count()

db.products.find({}).limit(4)

db.products.find({}).limit(4).skip(2)

db.products.find({}).sort({
    category: 1,
    name: -1,
}).limit(4)