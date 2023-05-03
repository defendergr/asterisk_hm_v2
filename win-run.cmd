@echo off
:start
cd /d %~dp0
IF NOT EXIST venv GOTO install-venv
cls
venv\Scripts\activate.bat && python install_db.pyc && waitress-serve --listen=0.0.0.0:80 AsteriskWebApp:app
exit

:install-venv
echo Installing Python Virtual Enviroment...
py -3.11 -m venv venv
cls
echo Installing Python Libraries...
venv\Scripts\activate.bat && pip install -r requirements.txt && win-run.cmd
