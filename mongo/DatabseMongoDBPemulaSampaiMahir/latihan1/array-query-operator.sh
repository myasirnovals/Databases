db.products.insertMany([
    {
        _id: 6,
        name: "Logitexh Wireless Mouse",
        price: new NumberLong("175000"),
        category: "laptop",
        tags: ["logitech", "mouse", "accessories"]
    },
    {
        _id: 7,
        name: "Coolear Pad Gaming",
        price: new NumberLong("200000"),
        category: "laptop",
        tags: ["cooler", "laptop", "accessories", "fan"]
    },
    {
        _id: 8,
        name: "Samsung Curve Monitor",
        price: new NumberLong("1750000"),
        category: "computer",
        tags: ["samsung", "monitor", "computer"]
    },
])

db.products.find()

db.products.find({
    tags: {
        $all: ["samsung", "accessories"]
    }
})

db.products.find({
    tags: {
        $elemMatch: {
            $in: ["samsung", "logitech"]
        }
    }
})

db.products.find({
    tags: {
        $size: 3
    }
})