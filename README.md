# Azure Infrastructure Operations Project: Deploying a scalable IaaS web server in Azure

### Introduction
For this project, you will write a Packer template and a Terraform template to deploy a customizable, scalable web server in Azure.

### Getting Started
1. Clone this [repository](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/tree/master/C1%20-%20Azure%20Infrastructure%20Operations/project/starter_files) into your local machin using the following command:

```git clone <repository_url>```

3. Create your infrastructure as code

### Dependencies
1. Create an [Azure Account](https://portal.azure.com) 
2. Install the [Azure command line interface](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
3. Install [Packer](https://www.packer.io/downloads)
4. Install [Terraform](https://www.terraform.io/downloads.html)

### Instructions
The following instructions will allow the user to build a scalable web server in Azure using the Azure CLI, a well as, Packer and Terraform. 

1. Log into your Azure account

Log into you Azure account using the following command:

```az login ```

This will start a web instance where you can log into your account using your set browser and the user's credentials.

2.  Create policy

To create a tagging policy to allow all resources that include tags, the user must run the follwing command, as well as the tagging-policy.json file:

```az policy definition create --name tagging-policy --rules tagging-policy.json```

A user can create a policy using the Azure Portal as wel doing these following steps:
- In the Azure Policy panel, select "Definitions" from the left-hand menu.
- Click the "+ Add definition" button.
- Define the policy by specifying its name, description, and conditions using Azure Policy Definition Language (JSON).

3. Apply policy

To apply the policy using the Azure CLI, use the following command: 

```az policy assignment create --name tagging-policy --policy tagging-policy```

Users can assign a policy following these steps: 
- Once you've created the policy definition, go to "Assignments" in the left-hand menu.
- Click the "+ Assign policy" button.
- Select the policy definition you created.
- Choose the scope where you want to apply the policy (e.g., subscription, resource group, or resource).
- Configure any parameters or exclusions as needed.
- Review and confirm the assignment.
  
5.  

### Output
**Your words here**

