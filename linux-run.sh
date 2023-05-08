if [[ -e venv ]]; then
  clear
  source ./venv/bin/activate
  waitress-serve AsteriskWebApp:app
else
  clear
  echo 'Creating virtual environment...'
  python3.11 -m venv venv
  clear
  echo 'Activating virtual environment...'
  source ./venv/bin/activate
  clear
  echo 'Installing requirements...'
  pip install -r requirements.txt
  clear
  echo 'Installing db'
  python install_db.pyc
  clear
  echo 'Starting server...'
  waitress-serve AsteriskWebApp:app
  clear
fi