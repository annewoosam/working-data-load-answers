
from flask import Flask, jsonify, render_template
from model import connect_to_db, Answer


app = Flask(__name__)


@app.route('/')
def homepage():
    """Show the homepage."""

    return render_template('index.html')


@app.route('/api/answer/<int:answer_id>')
def get_answer(answer_id):
    """Return a answer from the database as JSON."""

    answer = Answer.query.get(answer_id)

    if answer:
        return jsonify({'status': 'success',
                        'checklistid': answer.checklistid,
                        'answer_id': answer.answer_id,
                        'questionnumber': answer.questionnumber,
                        'role': answer.role,
                        'answer':answer.answer,
                        'timespent': answer.timespent,
                        'comment': answer.comment
                        })
    else:
        return jsonify({'status': 'error',
                        'message': 'No answer found with that ID'})


if __name__ == '__main__':
    connect_to_db(app)
    app.run(host='0.0.0.0', debug=True)