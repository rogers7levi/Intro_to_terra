resource "aws_s3_bucket" "terraform_state_for_intro" { 
  bucket = "s3-backend-${random_string.unique_suffix.result}"
  acl    = "private" 
 
  versioning { 
    enabled = true 
  } 
 
  server_side_encryption_configuration { 
    rule { 
      apply_server_side_encryption_by_default { 
        sse_algorithm = "AES256" 
      } 
    } 
  } 
 
  lifecycle { 
    prevent_destroy = true 
  } 
 
  lifecycle_rule { 
    id      = "delete_old_versions" 
    enabled = true 
 
    noncurrent_version_expiration { 
      days = 30 
    } 
  } 
} 

resource "random_string" "unique_suffix" {
    length = 7
    special = false
    upper = false
  
}