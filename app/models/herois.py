from flask_wtf import FlaskForm
from wtforms import StringField, TextAreaField
from wtforms.validators import DataRequired


class MyForm(FlaskForm):
    nome = StringField('nome', validators=[DataRequired()])
    caracteristicas = TextAreaField('caracteristicas', render_kw={"rows":4}, validators=[DataRequired()])
    habilidades = TextAreaField('habilidades', render_kw={"rows":4}, validators=[DataRequired()])
    poderes = TextAreaField('poderes', render_kw={"rows":4}, validators=[DataRequired()])
