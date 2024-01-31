name: deploying storage

on: 
  workflow_dispatch:
jobs:
    build:
      runs-on: ubuntu-latest

      steps:       
       -  uses: actions/checkout@v3

       -  uses: Azure/login@v1.6.1
          with:
             creds: ${{secrets.newsecret}}

       - run: az group list

       - name: Deploy Storage account
         uses: Azure/arm-deploy@v1 
         with:
          subscriptionId: 0c92d9fb-c043-40a4-b483-675cc3e84e07
          resourceGroupName: Server-RG
          template: ./firstapp/azure-resources/resources.bicep
