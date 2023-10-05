MY_PATH=$(pwd)
cd "$MY_PATH/infra/"
terraform init 

terraform apply -auto-approve

cd "$MY_PATH"