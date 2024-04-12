provider "vault" {
  address         = "vault-internal.janand.online"
  skip_tls_verify = true
  token           = var.vault_token
}