@description('this file to deploy Vnet_storage _Rg')

param names string = 'redoo'
targetScope = 'resourceGroup'

param location string = 'eastus'


@description('storage details')
resource stg1 'Microsoft.Storage/storageAccounts@2023-01-01' = {
name: '${names}stg1'
location: location
sku: {
name: 'Premium_LRS'
  }
   kind: 'BlobStorage' 
   properties: {
    accessTier: 'Hot'
  }
  }
