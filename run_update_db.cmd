pip install Flask-Migrate
set FLASK_APP=update_db.py

flask db init
flask db migrate -m "Update db"
flask db upgrade
