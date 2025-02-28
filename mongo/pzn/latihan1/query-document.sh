# Query document
db.customers.find({
    _id: "yan0871"
})

db.customers.find({
    name: "Muhamad Yasir Noval"
})

db.products.find({
    price: 2000
})

db.orders.find({
    "items.product_id": 1
})