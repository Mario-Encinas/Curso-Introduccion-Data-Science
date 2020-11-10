#Título, elenco y año de cada película.

client = MongoClient('mongodb+srv://Encinas:Plch353p1@cursobedu.ftknr.mongodb.net/test?authSource=admin&replicaSet=atlas-1gv35t-shard-0&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
filter={}
project={
    'title': 1, 
    'cast': 1, 
    'year': 1
}

result = client['sample_mflix']['movies'].find(
  filter=filter,
  projection=project
)
