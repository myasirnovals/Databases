ping

#-- Queue
lpush queue "Yasir"

lrange queue 0 10

lpush queue "Budi"

lrange queue 0 10

lpush queue "Joko"

rpop queue 1

#-- Stack
lpush stack "Yasir"

lpush stack "Budi"

lpush stack "Joko"

lrange stack 0 10

lpop stack 1