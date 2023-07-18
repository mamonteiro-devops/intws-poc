resource "kubernetes_namespace" "lb" {
  metadata {
    annotations = {
      name = "lb"
    }

    labels = {
      mylabel = "label-lb"
    }

    name = "lb"
  }
}

resource "kubernetes_namespace" "ing" {
  metadata {
    annotations = {
      name = "ing"
    }

    labels = {
      mylabel = "label-ing"
    }

    name = "ing"
  }
}