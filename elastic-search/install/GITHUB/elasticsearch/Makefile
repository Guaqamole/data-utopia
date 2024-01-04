include ../helpers/common.mk

PREFIX := elasticsearch
RELEASE := elasticsearch
TIMEOUT := 300s

install:
	helm upgrade --wait --timeout=$(TIMEOUT) --install --values tmaster.yaml $(PREFIX)-master ./
	helm upgrade --wait --timeout=$(TIMEOUT) --install --values tdata.yaml $(PREFIX)-data ./
#	helm upgrade --wait --timeout=$(TIMEOUT) --install --values client.yaml $(PREFIX)-client ./

purge:
	helm del $(PREFIX)-master
	helm del $(PREFIX)-data
#	helm del $(PREFIX)-client
