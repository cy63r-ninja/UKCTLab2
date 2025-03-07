# UK CyberTeam Training
## Workbook and lab content
#### Simon Vernon, SANS 2025

### Getting started

1. Log into Azure and open a cloud shell
2. clone this repository using:
    `git clone https://github.com/cy63r-ninja/UKCTLab2`
3. Execute terraform init and terraform apply:
    `terraform init`
    `terraform apply`
4. Check out the new assets in the resource group "SANSWorkshop", click on the virtual machine called 'Webserver1' and finds its public IP address. 
5. Browse to the Public IP, you should have a web site online (wait a few minutes if you don't)
6. now execute the final build script back in your Azure shell. 
    `./final.sh`
7. You are now ready to start hardening the platform!


#### Contact Simon Vernon
#### @Xzer0f
#### https://www.linkedin.com/in/simon-vernon