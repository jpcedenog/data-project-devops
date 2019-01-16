verify:
	@echo '$(OS)'
	@echo '$(CONDA_PREFIX)'

setup:
	conda create --name data_driven_project --yes

install:
	conda install --name data_driven_project --yes --file requirements.txt

lint:
	pylint --disable=R,C datadrivenlibs

test:
	PYTHONPATH=. && pytest -vv --cov=datadrivenlibs tests/*.py
	PYTHONPATH=. && pytest --nbval-lax notebooks/*.ipynb

uninstall:
	conda env remove --name data_driven_project --yes

all: install lint test
