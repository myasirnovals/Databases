# Comparison operator
db.products.insertMany([
    {
        _id: 3,
        name: "Pop mie rasa bakso",
        price: new NumberLong("2500"),
        category: "food"
    },
    {
        _id: 4,
        name: "Samsung Galazy S9",
        price: new NumberLong("10000000"),
        category: "handphone"
    },
    {
        _id: 5,
        name: "Acer Predator XX1",
        price: new NumberLong("25000000"),
        category: "laptop"
    },
])

db.products.find()

db.customers.find({
    _id: {
        $eq: "yan0871"
    }
})

db.products.find({
    price: {
        $gt: 2000
    }
})

db.products.find({
    category: {
        $in: ["laptop", "handphone"]
    },
    price: {
        $gt: 10000000
    }
})