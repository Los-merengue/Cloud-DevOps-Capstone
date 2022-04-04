setup:
	# Create python virtualenv & source it
	# source ~/.capstone/bin/activate
	python3 -m venv ~/.capstone

install:
	# This should be run from inside a virtualenv
	pip3 install --no-cache-dir --upgrade pip &&\
		pip3 install --no-cache-dir -r requirements.txt
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
        chmod +x ./hadolint
		
test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb


validate-circleci:
	# See https://circleci.com/docs/2.0/local-cli/#processing-a-config
	circleci config process .circleci/config.yml

lint:
	# docker run --rm -i hadolint/hadolint < Dockerfile
	./hadolint Dockerfile
	pylint --disable=R,C,W1203,W1202, flask_app/app.py


all: install lint test