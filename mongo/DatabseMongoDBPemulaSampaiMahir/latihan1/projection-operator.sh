db.products.find({}, {
    name: 1,
    category: 1
})

db.products.find({}, {
    tags: 0,
    price: 0
})

db.products.find({}, {
    name: 1,
    tags: {
        $elemMatch: {
            $in: ["samsung", "logitech", "accessories"]
        }
    }
})

db.products.find({
    tags: {
        $exists: true
    }
}, {
    name: 1,
    "tags.$": 1
})

db.products.find({
    tags: {
        $exists: true
    }
}, {
    name: 1,
    tags: {
        $slice: 2
    }
})