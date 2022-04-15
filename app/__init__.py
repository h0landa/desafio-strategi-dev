from flask import Flask
from flask_script import Manager
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate, MigrateCommand



app = Flask(__name__)
manager = Manager(app)
db = SQLAlchemy(app)
migrate = Migrate(db, app)
manager.add_command('db', MigrateCommand)

from app.controllers import default



