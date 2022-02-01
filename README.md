This Module is prepared for the deployment of a virtual network in Azure.

To use the module, copy below 

module "Module" {
    source = "./Module"   ---------------- Edit the source depending on the module folder path
    
##### Here is the terraform.tfvars parameters that grant access to deploy in your azure subscription using Service Principal ######## 

subscription_id = "Paste your Azure subscription id here"
client_id       = "Paste your Service Principal App_id here"
client_secret   = "Paste your Azure Service Principal Password here"  ---------- This is generated when you created the service principal
tenant_id       = "Paste your Azure tenant id here"
    
}
