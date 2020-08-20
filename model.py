
from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()


class Answer(db.Model):
    """Data model for an answer."""

    __tablename__ = 'answers'

    answer_id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    checklistid = db.Column(db.Integer, nullable=False)
    questionnumber = db.Column(db.Integer, nullable=False)
    role = db.Column(db.Boolean, nullable=False)
    answer = db.Column(db.String(), nullable=False)
    timespent = db.Column(db.Integer, nullable=False)
    comment = db.Column(db.String(), nullable=False)
    # answer_id = db.Column(db.Integer,
    #                      db.ForeignKey('templates.answer_id'),
    #                      nullable=False)
    # Template = db.relationship('Template', backref='answers')

    def __repr__(self):
        """Provide helpful representation when printing."""

        return f'<answer answer_id={self.answer_id} email={self.email}> answername={self.answername} answertype={self.answertype}'


def connect_to_db(app):
    """Connect the database to our Flask app."""

    app.config['SQLALCHEMY_DATABASE_URI'] = 'postgres:///answers'
    app.config['SQLALCHEMY_ECHO'] = False
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
    db.app = app
    db.init_app(app)


if __name__ == '__main__':
    from server import app

    # As a convenience, if we run this module interactively, it will leave
    # you in a state of being able to work with the database directly.
    connect_to_db(app)
    print('Connected to db!')
