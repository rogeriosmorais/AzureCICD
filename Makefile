setup:
	python3 -m venv ~/.devops
	export PATH=$HOME/.local/bin:$PATH
	source ~/.devops/bin/activate

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
