include .env
export
SHELL = /bin/zsh
PY_DEP_FILE = requirements.txt
DJANGO = python manage.py
SERVICE_NAME = cms-backend
image_name = avi/${SERVICE_NAME}
READ_ENV_VARS := $(shell grep -v '^\#' .env | sed '/^$$/d' | sed 's/^/--set-env-vars="/' | sed 's#$$#" ##')

migrate:
	${DJANGO} makemigrations && ${DJANGO} migrate
	# ${DJANGO} collectstatic

dev: migrate
	${DJANGO} runserver

prod-run:
	gunicorn --workers 4 --bind 0.0.0.0:8000 avi_cms_backend.wsgi

freeze:
	@pip freeze > ${PY_DEP_FILE}
	@bat ${PY_DEP_FILE}

proxy:
	./cloud_sql_proxy -instances="${GCP_PROJECT}:${GCP_REGION}:${GCP_DB_INSTANCE_NAME}"=tcp:5432

build:
		docker build --tag ${image_name} .

run: build
		docker run --rm -p 8000:8000 --env-file .env ${image_name}

# Set GCP configurations.
setup:
	@gcloud config set project ${GCP_PROJECT}
	@gcloud config set gcloudignore/enabled true
	# @gcloud config set functions/region ${GCP_REGION}
	@gcloud config set run/region ${GCP_REGION}
	@gcloud config set run/platform managed

deploy: setup
	gcloud run deploy ${SERVICE_NAME} --port=${GCP_RUN_PORT} \
		${READ_ENV_VARS} \
		--allow-unauthenticated --source .
# --set-cloudsql-instances

submit: setup
	gcloud builds submit --tag gcr.io/${GCP_PROJECT}/django_on_cloudrun

env:
	$(grep -v '^#' .env | xargs)

test:
	echo ${READ_ENV_VARS}
