db.customers.insertOne({
    _id: "joko",
    name: "joko"
})

db.customers.find()

db.customers.find({
    $expr: {
        $eq: ["$_id", "$name"]
    }
})

db.products.find({
    $jsonSchema: {
        required: ["name"],
        properties: {
            name: {
                type: 'string'
            },
            price: {
                type: "number"
            }
        }
    }
})

db.products.find({
    price: {
        $mod: [5, 0]
    }
})

db.products.find({
    price: {
        $mod: [1000000, 0]
    }
})

db.products.find({
    name: {
        $regex: /mie/,
        $options: 'i'
    }
})

db.products.find({
    name: {
        $regex: /^Ayam/
    }
})


# jalankan di mongoshell
db.customers.find({
    $where: function () {
        return this._id == this.name
    }
})