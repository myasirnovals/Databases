ping

geoadd seller.location 107.49073721644544 -6.924689825387787 seller1

geoadd seller.location 107.4878384566851 -6.9208224679253 seller2

geopos seller.location seller2

geodist seller.location seller1 seller2 km

geodist seller.location seller1 seller2 m

geosearch seller.location fromlonlat 106.82691832952304 -6.175527268375161 byradius 1 km