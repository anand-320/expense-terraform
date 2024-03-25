env=$1
action=$2

if [ -z "$env"]; then
  echo "input (dev|qa|state|prod) is not provided"
  exit 1
fi

if [ -z "$action"]; then
  echo "input action (apply|destroy) is not provided"
  exit 2
fi

rm -rf .terraform/terraform.tfstate
terraform init -backend-config=env-$env/state.tfvars
terraform $action -var-file=env-$env/main.tfvars

