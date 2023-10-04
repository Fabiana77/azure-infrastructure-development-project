# Azure Infrastructure Operations Project: Deploying a scalable IaaS web server in Azure

### Introduction
For this project, you will write a Packer template and a Terraform template to deploy a customizable, scalable web server in Azure.

### Getting Started
1. Clone this [repository](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/tree/master/C1%20-%20Azure%20Infrastructure%20Operations/project/starter_files) into your local machin using the following command:

```git clone <repository_url>```

2. Create your infrastructure as code

### Dependencies
1. Create an [Azure Account](https://portal.azure.com) 
2. Install the [Azure command line interface](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
3. Install [Packer](https://www.packer.io/downloads)
4. Install [Terraform](https://www.terraform.io/downloads.html)

### Instructions
The following instructions will allow the user to build a scalable web server in Azure using the Azure CLI, a well as, Packer and Terraform. 

**1. Log into your Azure account**

Log into you Azure account using the following command:

```az login ```

This will start a web instance where you can log into your account using your set browser and the user's credentials.

**2.  Create policy**

Command to create a new policy in Azure CLI:

```az policy definition create --name tagging-policy --rules tagging-policy.json```

How to create a policy in the Azure Portal:
- In the Azure Policy panel, select "Definitions" from the left-hand menu.
- Click the "+ Add definition" button.
- Define the policy by specifying its name, description, and conditions using Azure Policy Definition Language (JSON).

**3. Apply policy**

To apply the policy using the Azure CLI, use the following command: 

```az policy assignment create --name tagging-policy --policy tagging-policy```

Users can assign a policy in the Azure Portal following these steps: 
- Once you've created the policy definition, go to "Assignments" in the left-hand menu.
- Click the "+ Assign policy" button.
- Select the policy definition you created.
- Choose the scope where you want to apply the policy (e.g., subscription, resource group, or resource).
- Configure any parameters or exclusions as needed.
- Review and confirm the assignment.

**4. Create a Resource Group**

```az group create --name <resource-group-name> --location <location> --subscription <subscription-id>```

Example: 

```az group create --name Azuredevops --location South Central US```


**5. Create a Packer image using the server.json file following this next command:**
   
To create a packer image the user must provide their Azure credentials and save them into the server.json file. These credentials are the following:
- Subscription ID (represented as Subscription ID)
- Client ID (represented as Application ID)
- Client Secret (represented as Secret Key)
- location (the location that was set for the Azure Resource Group)

Run the folloeing command to create a custom Packer image for the Virtual Machines:

```packer build server.json```  

**6. Initiate Terraform using this command** 
```terraform init```

**7. Customize Variables File (Optional)**

The variables.tf file is used to define input variables that can be used throughout your Terraform configuration. To add new variables to the file, the user must follow this next template:

```
variable "variable_name" {
  description = "Description of the variable."
  type        = string  # Replace with the appropriate data type (string, number, list, etc.)
  default     = "default_value"  # Optional, replace with a default value if needed
  # You can add other attributes or constraints as needed
}
```

In this project, I created the following variables:
- *countVM:* total number of Virtual Machines to create.
- *location:* location set for the deployment of your Azure Resource. 
- *username:* username for your Virtual Machine. 
- *password:* password for your Virtual Machine.

**8. Access your Resource Group by using an "import" command**

```terraform import azurerm_resource_group.Azuredevops /subscriptions/<subscription_id>/resourceGroups/Azuredevops```

- Add the subscription number to the command

**9. Create an Exsecusion Plan**
Use the following command to create an execusion plan and save the results to be evaluated later 

```terraform plan -out solution.plan```

- Terraform will have the user entre the "prefix" and the "location" values. 

**Apply the Execussion Plan**

```terraform apply solution.plan```

Once deploy, the users can undo all resources using ```terraform destroy``` in the Azure CLI.

### Output

The following pictures represent the outputs of my personal code. 
![Apply1](https://github.com/Fabiana77/azure-infrastructure-development-project/assets/70912175/f903025d-9bf7-4a4a-816f-bbc68fbed889)

![Apply2](https://github.com/Fabiana77/azure-infrastructure-development-project/assets/70912175/671c3982-5a66-4b70-af69-747dc11d66ba)

![Captura de Pantalla 2023-10-04 a la(s) 16 32 57](https://github.com/Fabiana77/azure-infrastructure-development-project/assets/70912175/73d8c5dd-5ccf-4d8c-9c01-13b60a69ca48)

![Captura de Pantalla 2023-10-04 a la(s) 16 33 51](https://github.com/Fabiana77/azure-infrastructure-development-project/assets/70912175/f453802f-8b47-478e-b53a-dce66b3c79a3)





