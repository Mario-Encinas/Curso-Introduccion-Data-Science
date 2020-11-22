"""mediante el uso de agregaciones, encontrar el número de publicaciones que tienen
conexión a Internet, sea desde Wifi o desde cable (Ethernet)."""

client = MongoClient('mongodb+srv://Encinas:****@cursobedu.ftknr.mongodb.net/test?authSource=admin&replicaSet=atlas-1gv35t-shard-0&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
result = client['sample_airbnb']['listingsAndReviews'].aggregate([
	{'$match': {'amenities': {'$in': ['Wifi', 'Ethernet']}}},
	{'$group': {'_id': None, 'total': {'$sum': 1}}}
])
