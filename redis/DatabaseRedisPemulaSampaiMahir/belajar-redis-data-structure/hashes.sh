ping

hset "student:1" name "Muhamad Yasir Noval" value 100 address "Bandung"

hset "student:2" name "Budi Nugraha" value 90 address "Bandung"

hset "student:3" name "Joko Morro" value 80 address "Cirebon"

hgetall "student:3"

hget student:1 name

hset "student:2" name "Budi Nugraha" value 95

hget student:2 value

hgetall student:2

hincrby student:1 value -10

hincrby student:2 value -5

hincrby student:3 value -5

hgetall student:1

hgetall student:2

hgetall student:3