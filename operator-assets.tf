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

# Prometheus Operator
resource "local_file" "prometheus-operator" {
  count      = "${var.operators_prometheus ? 1 : 0}"
  depends_on = ["template_dir.manifests"]

  content  = "${file("${path.module}/resources/operators/manifests/prometheus-operator.yaml")}"
  filename = "${var.asset_dir}/experimental/manifests/prometheus-operator.yaml"
}

# Elasticsearch Operator
resource "local_file" "elasticsearch-operator" {
  count      = "${var.operators_elasticsearch ? 1 : 0}"
  depends_on = ["template_dir.manifests"]

  content  = "${file("${path.module}/resources/operators/manifests/elasticsearch-operator.yaml")}"
  filename = "${var.asset_dir}/experimental/manifests/elasticsearch-operator.yaml"
}
