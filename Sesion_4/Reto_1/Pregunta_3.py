#Nombre y contraseña de cada usuario.

client = MongoClient('mongodb+srv://Encinas:Plch353p1@cursobedu.ftknr.mongodb.net/test?authSource=admin&replicaSet=atlas-1gv35t-shard-0&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
filter={}
project={
    'name': 1, 
    'password': 1
}

result = client['sample_mflix']['users'].find(
  filter=filter,
  projection=project
)
