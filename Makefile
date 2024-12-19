# Variables
CHART_NAME := match-fixture
SECRETS_FILE := conf/secrets.yaml

# Helm Commands
install:
	helm install $(CHART_NAME) -f $(SECRETS_FILE) .

upgrade:
	helm upgrade $(CHART_NAME) -f $(SECRETS_FILE) .

uninstall:
	helm uninstall $(CHART_NAME)

template:
	helm template $(CHART_NAME) .
	
lint:
	helm lint .
