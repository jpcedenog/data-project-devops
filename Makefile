verify:
	@echo '$(OS)'
	@echo '$(CONDA_PREFIX)'

setup:
	conda create --name datadrivenproject --yes

install:
	conda install --name datadrivenproject --yes --file requirements.txt

lint:
	pylint --disable=R,C datadrivenlibs

test:
	PYTHONPATH=. && pytest -vv --cov=datadrivenlibs tests/*.py
	PYTHONPATH=. && pytest --nbval-lax notebooks/*.ipynb

uninstall:
	conda env remove --name datadrivenproject --yes

all: install lint test
