MY_PATH=$(pwd)
cd "$MY_PATH/infra/"
terraform destroy -auto-approve 

cd "$MY_PATH"