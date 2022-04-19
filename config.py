DEBUG = True
SECRET_KEY = "senha-forte"
SQLALCHEMY_TRACK_MODIFICATIONS = False
DB = 'storage'
USER = 'root'
PASSWORD = ''
HOST = 'localhost'
PORT = 3306
SQLALCHEMY_DATABASE_URI = f'mysql://{USER}:{PASSWORD}@{HOST}/{DB}'

