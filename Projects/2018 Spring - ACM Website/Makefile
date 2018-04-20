init: .install-python-dependencies .start-database-server .setup-database \
	.download-assets

run: .start-database-server .start-server .stop-database-server

stop: .stop-database-server

lint:
	pipenv run pycodestyle ./ --ignore=W605

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
	$(if $(shell cat), \
		cat .setup-database.txt | psql -h localhost, \
		type .setup-database.txt | psql -h localhost)

.stop-database-server:
	@echo Step 4: Stop database server
	$(if $(shell pg_ctl status | grep "PID"), pg_ctl stop, @echo Database is already stopped)

.start-server:
	@echo Step 3: Start Python (Flask) server
	python -m webbrowser "http://localhost:5000/"
	pipenv run python server.py
