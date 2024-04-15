provider "vault" {
  address         = "https://vault-internal.janand.online:8200"
  skip_tls_verify = true
  token           = var.vault_token
}
data "aws_kms_alias" "expense-dev" {
  name = "alias/${var.vault_token}"
}