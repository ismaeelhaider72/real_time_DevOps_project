
terraform {
 backend "s3" {
   bucket = "ismaeelhtmltemplatesbucket"
   key    = "jmsth_jenkins.tfstate"
   region = "ap-south-1"
   encrypt = true
   dynamodb_table = "terraform-state-lock-dynamo"
   }
 }

