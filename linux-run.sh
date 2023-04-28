
if ! [[ -e venv ]]; then
  echo 'Creating virtual environment...'
  python3.11 -m venv venv
  clear
  echo 'Activating virtual environment...'
  source ./venv/bin/activate
  clear
  echo 'Installing requirements...'
pip install -r requirements.txt
fi
source ./venv/bin/activate
python install_db.pyc
waitress-serve AsteriskWebApp:app
