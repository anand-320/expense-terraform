provider "vault" {
  address         = "vault-internal.janand.online:8200"
  skip_tls_verify = true
  token           = var.vault_token
}