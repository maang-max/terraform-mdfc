# terraform-mdfc
Deploy Microsoft Defender for Cloud via Terraform
1. Install Terraform on your machine.
2. Create a new directory and navigate to it in your terminal.
3. Create a new Terraform file (e.g., `main.tf`) and paste the script provided above into the file.
4. Update the variable values (`subscription_id`, `resource_group_name`, `workspace_name`, etc.) with your desired values.
5. Run the following commands in the terminal:
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```
   Terraform will initialize, validate the plan, and prompt you to confirm the deployment. Enter `yes` to proceed.
6. Terraform will provision the necessary resources, including the resource group, Log Analytics workspace, and enable Microsoft Defender for Cloud.
7. Once the deployment is complete, the Log Analytics workspace ID will be outputted.

Please note that this is a basic example, and you may need to adjust the script based on your specific requirements, such as network configurations, RBAC permissions, and additional resource provisioning. Make sure to review the Terraform documentation and consult the Microsoft Defender for Cloud documentation for more information on advanced configurations and customization options.
