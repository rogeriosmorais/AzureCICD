setup:
	python3 -m venv ~/.udacity-devops
	source ~/.myrepo/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_hello.py
	#python -m pytest --nbval notebook.ipynb


lint:
	#hadolint Dockerfile 
	#pylint --disable=R,C,W1203 app.py
	pylint --disable=R,C hello.py

all: install lint test
