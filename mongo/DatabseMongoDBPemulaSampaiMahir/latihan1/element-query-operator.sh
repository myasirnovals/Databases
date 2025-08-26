db.products.find({
    category: {
        $exists: true
    }
})

db.products.find({
    category: {
        $exists: false
    }
})

db.products.find({
    category: {
        $type: "string"
    }
})

db.products.find({
    price: {
        $type: ["int", "long"]
    }
})