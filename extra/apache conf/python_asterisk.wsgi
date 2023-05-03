import sys
import logging

logging.basicConfig(level=logging.DEBUG, filename='/var/www/html/python_asterisk/logs/python_asterisk.log', format='%(asctime)s %(message)s')
sys.path.insert(0, '/var/www/html/python_asterisk')
sys.path.insert(0, '/var/www/html/python_asterisk/venv/lib/python3.11/site-packages')
from AsteriskWebApp import app as application

