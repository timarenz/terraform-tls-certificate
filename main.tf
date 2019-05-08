resource "tls_private_key" "server" {
  algorithm   = "${var.private_key_algorithm}"
  ecdsa_curve = "${var.private_key_ecdsa_curve}"
  rsa_bits    = "${var.private_key_rsa_bits}"
}

resource "tls_cert_request" "server" {
  key_algorithm   = "${tls_private_key.server.algorithm}"
  private_key_pem = "${tls_private_key.server.private_key_pem}"

  dns_names = "${var.dns_names}"

  subject {
    common_name  = "${var.common_name}"
    organization = "${var.organization_name}"
  }
}

resource "tls_locally_signed_cert" "server" {
  cert_request_pem   = "${tls_cert_request.server.cert_request_pem}"
  ca_key_algorithm   = "${var.ca_key_algorithm}"
  ca_private_key_pem = "${var.ca_key}"
  ca_cert_pem        = "${var.ca_cert}"

  validity_period_hours = "${var.validity_period_hours}"

  allowed_uses = "${var.allowed_uses}"
}
