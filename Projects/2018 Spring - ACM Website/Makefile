init: .install-python-dependencies .start-database-server .setup-database \
	.download-assets

run: .start-database-server .start-server .stop-database-server

stop: .stop-database-server

# Regarding --max-line-length, only error on excessive PEP8 violations
lint:
	pipenv run pycodestyle ./ --ignore=W605,W503 --max-line-length=100

# Download any files not allowed to be stored in this repo for copyright reasons
.download-assets:
	@echo Step 0: Download additional online assets

.install-python-dependencies:
	@echo Step 1: Install Python dependencies with Pipenv
	pipenv install --dev

.start-database-server:
	@echo Step 2: Start database server
	$(if $(shell pg_ctl status | grep "PID"), @echo Database is already started, pg_ctl start)

# TODO: Supress error output from $(shell cat) in Windows environments
.setup-database:
	@echo Step 2.1: Set up database server (one time)
	python setup-database.py | psql -h localhost

.stop-database-server:
	@echo Step 4: Stop database server
	$(if $(shell pg_ctl status | grep "PID"), pg_ctl stop, @echo Database is already stopped)

.start-server:
	@echo Step 3: Start Python (Flask) server
	python -m webbrowser "http://localhost:5000/"
	pipenv run python server.py
