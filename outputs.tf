output "key" {
  value     = "${tls_private_key.server.private_key_pem}"
  sensitive = true
}

output "cert" {
  value = "${tls_locally_signed_cert.server.cert_pem}"
}
