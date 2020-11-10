#¿Qué comentarios ha hecho Greg Powell?

client = MongoClient('mongodb+srv://Encinas:Plch353p1@cursobedu.ftknr.mongodb.net/test?authSource=admin&replicaSet=atlas-1gv35t-shard-0&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
filter={
    'name': 'Greg Powell'
}

result = client['sample_mflix']['comments'].find(
  filter=filter
)