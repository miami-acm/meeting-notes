init: .install-python-dependencies .start-database-server .setup-database \
	.download-assets

run: .start-database-server .start-server .stop-database-server

stop: .stop-database-server

# Download any files not allowed to be stored in this repo for copyright reasons
.download-assets:


.install-python-dependencies:
	pipenv install

.start-database-server:
	$(if pg_ctl status, @echo Database is already started, pg_ctl start)

# TODO: Supress error output from $(shell cat) in Windows environments
.setup-database:
	$(if $(shell cat), \
		cat .setup-database.txt | psql -h localhost, \
		type .setup-database.txt | psql -h localhost)

.stop-database-server:
	$(if pg_ctl status, @echo Database is already stopped, pg_ctl stop)

.start-server:
	pipenv run python server.py
