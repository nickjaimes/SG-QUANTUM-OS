VENV=.venv
PY=$(VENV)/bin/python

.PHONY: install run sim dash api test lint clean

install:
	python3 -m venv $(VENV)
	$(PY) -m pip install -r requirements.txt

sim:
	$(PY) sandbox/simulator.py

dash:
	$(PY) ui/terminal_dashboard.py

api:
	uvicorn api.server:app --reload

run:
	@echo "Launching SIM + DASH"
	@echo "Open a new terminal for:  make dash"
	$(PY) sandbox/simulator.py

test:
	$(PY) tools/scripts/validate_schemas.py

lint:
	@echo "(TODO) integrate flake8 / black etc"

clean:
	rm -rf $(VENV)
	find . -name "__pycache__" -type d -exec rm -r {} +
