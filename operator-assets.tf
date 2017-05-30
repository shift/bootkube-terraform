# Operators

# CoreOS Update Operator
resource "local_file" "update-operator" {
  count      = "${var.operators_update_service ? 1 : 0}"
  depends_on = ["template_dir.manifests"]

  content  = "${file("${path.module}/resources/operators/manifests/update-operator.yaml")}"
  filename = "${var.asset_dir}/experimental/manifests/update-operator.yaml"
}

# Rook Operator
resource "local_file" "rook-operator" {
  count      = "${var.operators_rook ? 1 : 0}"
  depends_on = ["template_dir.manifests"]

  content  = "${file("${path.module}/resources/operators/manifests/rook-operator.yaml")}"
  filename = "${var.asset_dir}/experimental/manifests/rook-operator.yaml"
}
