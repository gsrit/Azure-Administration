

$grp="Demo-AZ-CLI-Create-VM"
$location="southeastasia"
$vmName="CLI-Demo-VM"
$plan="Demo-CLI"
$appname="Test-Demo-LAB"



#Creating VM 

az vm create --resource-group $grp --name $vmName --image Win2019Datacenter --admin-username gaurav --adminpassword TEST@p@$$

# App service

az appservice plan create --name $pln --resource-group $grp --location $location --sku S1
az webapp create --name $appname --plan $pln --resource-group %grp


