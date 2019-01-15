# For this to work, $CONDA_PREFIX and $CONDA_PREFIX/Scripts need to be on $PATH
verify:
	@echo '$(OS)'
	@echo '$(CONDA_PREFIX)'

setup:
	conda create --name .data-driven-project --yes

install:
	conda install --name .data-driven-project --yes --file requirements.txt

lint:
	pylint --disable=R,C datadrivenlibs

test:
	PYTHONPATH=. && pytest -vv --cov=datadrivenlibs tests/*.py
	PYTHONPATH=. && pytest --nbval-lax notebooks/*.ipynb

uninstall:
	conda env remove --name .data-driven-project --yes

all: install lint test
