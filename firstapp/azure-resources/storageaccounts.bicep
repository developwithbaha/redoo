param location1 string = 'east us'
param location string = resourceGroup().location
param storageAccountName string = 'toylaunch${uniqueString(resourceGroup().id)}'

/*resource nygroup 'Microsoft.Resources/resourceGroups@2023-07-01' existing = {
  name: 'Server-RG'
  location: location1

}*/


resource storageAccount 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

