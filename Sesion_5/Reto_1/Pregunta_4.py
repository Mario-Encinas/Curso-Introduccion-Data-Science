#Propiedades que no permitan fiestas ni fumadores

client = MongoClient('mongodb+srv://Encinas:****@cursobedu.ftknr.mongodb.net/test?authSource=admin&replicaSet=atlas-1gv35t-shard-0&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
filter={
    'house_rules': re.compile(r"No smoking|No parties(?i)")
}

result = client['sample_airbnb']['listingsAndReviews'].find(
  filter=filter
)
