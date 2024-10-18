README.md 
# Core Infrastructure 
 
This directory contains Terraform configurations for the core infrastructure components of our 
project. These are foundational elements that other parts of our infrastructure rely upon. 
 
## Overview 
 
The `core` directory manages the following resources: 
 
- **AWS S3 Bucket** for Terraform state storage: Ensures that our Terraform state is stored 
securely and is accessible across our team for state management. 
- **DynamoDB Table** for Terraform state locking: Prevents concurrent operations from 
corrupting the state. 
 
## Structure 
 
- `s3.tf`: Contains the configuration for the S3 bucket used for state storage. 
- `dynamodb.tf`: Defines the DynamoDB table used for locking the Terraform state during 
modifications. 
- `providers.tf`: Sets up provider configurations and specifies the required versions. 
- `variables.tf`: Declares variables used across multiple configurations within the core 
infrastructure. 
 
## Usage 
 
To deploy or modify the core infrastructure, follow these steps: 
 
1. **Initialization**: 
   Navigate to the `core` directory and run: 
 
`terraform init` 
 
This will prepare your directory for Terraform operations, setting up the backend and initializing 
provider plugins. 
 
2. **Planning**: 
   To see what changes Terraform plans to make to your infrastructure based on the current 
configurations, run: 
 
`terraform plan` 
 
3. **Applying Changes**: 
   To apply the changes proposed in the plan, run: 
 
`terraform apply` 
 
Always review the plan before applying it to prevent unintended changes. 
 
## Best Practices 
 
- **Review changes**: Always review the output of `terraform plan` before applying changes. 
- **Keep secrets secure**: Never hard-code sensitive information. Use environment variables 
and secrets management practices. 
- **Version control**: Keep all changes in version control and review changes through pull 
requests. 
 
## Contributing 
 
Contributions to the core infrastructure should follow the company's guidelines on 
infrastructure changes, including approval and review processes. 
 
--- 
 
For more detailed information on each resource, refer to the individual `.tf` files within this 
directory. 
 