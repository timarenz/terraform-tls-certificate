output "private_key" {
  value     = tls_private_key.certificate.private_key_pem
  sensitive = true
}

output "cert" {
  value = tls_locally_signed_cert.certificate.cert_pem
}
