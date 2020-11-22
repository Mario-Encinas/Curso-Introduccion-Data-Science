"""agrega un filtro que permita obtener todas las publicaciones que tengan 50 o más comentarios,
que la valoración sea mayor o igual a 80, que cuenten con conexión a Internet vía cable y estén ubicada en Brazil."""

client = MongoClient('mongodb+srv://Encinas:****@cursobedu.ftknr.mongodb.net/test?authSource=admin&replicaSet=atlas-1gv35t-shard-0&readPreference=primary&appname=MongoDB%20Compass&ssl=true')
filter={
    'number_of_reviews': {
        '$gte': 50
    }, 
    'review_scores.review_scores_rating': {
        '$gte': 80
    }, 
    'amenities': {
        '$in': [
            re.compile(r"Ethernet")
        ]
    }, 
    'address.country': 'Brazil'
}

result = client['sample_airbnb']['listingsAndReviews'].find(
  filter=filter
)
