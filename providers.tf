provider "aws" { 
  region = var.region 
} 
#s3 provider 
terraform { 
 
  required_providers { 
    aws = { 
      source  = "hashicorp/aws" 
      version = "4.31.0" 
    } 
 
  } 
} 