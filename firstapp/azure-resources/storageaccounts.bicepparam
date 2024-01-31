using './storageaccounts.bicep'

param location = resourceGroup().location
param storageAccountName = 'toylaunch${uniqueString(resourceGroup().id)}'

