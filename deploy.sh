# deploy.sh
# Déployer l'infrastructure Terraform

cd infra
terraform init
terraform apply -auto-approve
