ping

zadd rangking 100 Yasir

zadd rangking 90 Budi

zadd rangking 95 Joko

zcard rangking

zrange rangking 0 2

zrange rangking 95 100 byscore

zrange rangking 0 -1 withscores

zrem rangking Yasir

zremrangebyscore rangking 0 75