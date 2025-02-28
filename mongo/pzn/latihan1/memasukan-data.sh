# Memasukan Data
db.customers.insertOne({
    _id: "yan0871",
    name: "Muhamad Yasir Noval"
})

db.customers.find()

db.products.insertMany([
    {
        _id: 1,
        name: "Indomie Ayam Bawang",
        price: new NumberLong("2000")
    },
    {
        _id: 2,
        name: "Indomie Cahkangkung",
        price: new NumberLong("5000")
    }
])

db.products.find()

db.orders.insertOne({
    _id: new ObjectId(),
    total: new NumberLong("14000"),
    items: [
        {
            product_id: 1,
            price: new NumberLong("2000"),
            quantity: new NumberInt("2")
        },
        {
            product_id: 2,
            price: new NumberLong("5000"),
            quantity: new NumberInt("2")
        }
    ]
})