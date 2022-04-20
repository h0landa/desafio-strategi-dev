from app import db


class Herois(db.Model):
    __tablename__ = 'herois'

    id = db.Column(db.Integer, autoincrement=True, primary_key=True)
    nome = db.Column(db.String(45), unique=True)
    caracteristicas = db.Column(db.String(100))
    habilidades = db.Column(db.String(100))
    poderes = db.Column(db.String(100))

    def __init__(self, nome, caracteristicas, habilidades, poderes):
        self.nome = nome
        self.caracteristicas = caracteristicas
        self.habilidades = habilidades
        self.poderes = poderes

    def __repr__(self):
        return self.nome


class Candidatos(db.Model):
    __tablename__ = 'candidatos'

    id = db.Column(db.Integer, autoincrement=True, primary_key=True)
    nome = db.Column(db.String(45), unique=True)
    path = db.Column(db.String(100))

    def __init__(self, nome, path):
        self.nome = nome
        self.path = path


class Vingadores(db.Model):
    __tablename__ = 'vingadores'

    id = db.Column(db.Integer, autoincrement=True, primary_key=True)
    nome = db.Column(db.String(45), unique=True)
    path = db.Column(db.String(100))

    def __init__(self, nome, path):
        self.nome = nome
        self.path = path


class Equipe(db.Model):
    __tablename__ = 'equipe'

    id = db.Column(db.Integer, autoincrement=True, primary_key=True)
    nome = db.Column(db.String(45), unique=True)
    path = db.Column(db.String(100))

    def __init__(self, nome, path):
        self.nome = nome
        self.path = path
