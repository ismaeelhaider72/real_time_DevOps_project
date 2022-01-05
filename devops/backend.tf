
terraform {
 backend "s3" {
   bucket = "ismaeelhtmltemplatesbucket"
   key    = "jmsth_jenkins.tfstate"
   encrypt = true
   dynamodb_table = "terraform-state-lock-dynamo"
   }
 }

