# Logical query operator
db.products.find({
    $and: [
        {
            category: {
                $in: ["laptop", "handphone"]
            }
        },
        {
            price: {
                $gt: 10000000
            }
        }
    ]
})

db.products.find({
    category: {
        $not: {
            $in: ["laptop", "handphone"]
        }
    }
})