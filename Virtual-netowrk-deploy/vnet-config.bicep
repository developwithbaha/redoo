param vvnetlocation string = 'West-us'

resource vnet1 'Microsoft.ScVmm/virtualNetworks@2023-10-07' = {
  name: 'myvnet1'
  location: vvnetlocation 
  properties: {
  }
  extendedLocation: {
  }
}
