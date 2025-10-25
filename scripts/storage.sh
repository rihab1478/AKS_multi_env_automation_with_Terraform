#!/bin/bash
RESOURCE_GROUP_NAME="top_k8s_stage"
LOCATION="francecentral"
STAGE_SA_ACCOUNT="tfstagebackend2025rihab"
DEV_SA_ACCOUNT="tfdevbackend2025rihab"
CONTAINER_NAME="tfstate"


az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STAGE_SA_ACCOUNT --sku Standard_LRS --encryption-services blob

az storage account create --resource-group $RESOURCE_GROUP_NAME --name $DEV_SA_ACCOUNT --sku Standard_LRS --encryption-services blob

az storage container create --name $CONTAINER_NAME --account-name $STAGE_SA_ACCOUNT

az storage container create --name $CONTAINER_NAME --account-name $DEV_SA_ACCOUNT