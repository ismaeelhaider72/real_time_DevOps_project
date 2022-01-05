
terraform {
 backend "s3" {
   bucket = "ismaeelhtmltemplatesbucket"
   key    = "jmsth_jenkins.tfstate"
   region = "us-east-2"
   encrypt = true
   dynamodb_table = "terraform-state-lock-dynamo"
   }
 }

