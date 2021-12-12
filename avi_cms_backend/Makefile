PY_DEP_FILE = requirements.txt
DJANGO = python manage.py

migrate:
	${DJANGO} makemigrations && ${DJANGO} migrate

dev: migrate
	${DJANGO} runserver

freeze:
	@pip freeze > ${PY_DEP_FILE}
	@bat ${PY_DEP_FILE}