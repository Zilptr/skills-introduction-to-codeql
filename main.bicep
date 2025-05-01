param location string = resourceGroup().location
param storagePrefix strin  = 'stgqq'
param storageName string = '${storagePrefix}${uniqueString(resourceGroup().id)}'



resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
}
