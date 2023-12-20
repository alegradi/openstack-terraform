resource "openstack_compute_instance_v2" "k8s-master-01" {
  name            = "k8s-master-01"
  image_id        = "d7afdd9f-0dda-464d-9196-53fb76bf6f05"
  flavor_id       = "528498bd-254a-42f7-8729-21d20abebc20"
  key_pair        = "openstack_keypair"
  security_groups = ["k8s-control-plane-sec-group", "k8s-external-access-sec-group", "k8s-internal-sec-group"]

  metadata = {
    this = "that"
  }

  network {
    port = openstack_networking_port_v2.port_1.id
  }
}

resource "openstack_compute_instance_v2" "k8s-master-02" {
  name            = "k8s-master-02"
  image_id        = "d7afdd9f-0dda-464d-9196-53fb76bf6f05"
  flavor_id       = "528498bd-254a-42f7-8729-21d20abebc20"
  key_pair        = "openstack_keypair"
  security_groups = ["k8s-control-plane-sec-group", "k8s-external-access-sec-group", "k8s-internal-sec-group"]

  metadata = {
    this = "that"
  }

  network {
    port = openstack_networking_port_v2.port_2.id
  }
}

resource "openstack_compute_instance_v2" "k8s-master-03" {
  name            = "k8s-master-03"
  image_id        = "d7afdd9f-0dda-464d-9196-53fb76bf6f05"
  flavor_id       = "528498bd-254a-42f7-8729-21d20abebc20"
  key_pair        = "openstack_keypair"
  security_groups = ["k8s-control-plane-sec-group", "k8s-external-access-sec-group", "k8s-internal-sec-group"]

  metadata = {
    this = "that"
  }

  network {
    port = openstack_networking_port_v2.port_3.id
  }
}

resource "openstack_compute_instance_v2" "k8s-worker-01" {
  name            = "k8s-worker-01"
  image_id        = "d7afdd9f-0dda-464d-9196-53fb76bf6f05"
  flavor_id       = "528498bd-254a-42f7-8729-21d20abebc20"
  key_pair        = "openstack_keypair"
  security_groups = ["k8s-worker-sec-group", "k8s-external-access-sec-group", "k8s-internal-sec-group"]

  metadata = {
    this = "that"
  }

  network {
    port = openstack_networking_port_v2.port_4.id
  }
}

resource "openstack_compute_instance_v2" "k8s-worker-02" {
  name            = "k8s-worker-02"
  image_id        = "d7afdd9f-0dda-464d-9196-53fb76bf6f05"
  flavor_id       = "528498bd-254a-42f7-8729-21d20abebc20"
  key_pair        = "openstack_keypair"
  security_groups = ["k8s-worker-sec-group", "k8s-external-access-sec-group", "k8s-internal-sec-group"]

  metadata = {
    this = "that"
  }

  network {
    port = openstack_networking_port_v2.port_5.id
  }
}

resource "openstack_compute_instance_v2" "k8s-lb-01" {
  name            = "k8s-lb-01"
  image_id        = "d7afdd9f-0dda-464d-9196-53fb76bf6f05"
  flavor_id       = "528498bd-254a-42f7-8729-21d20abebc20"
  key_pair        = "openstack_keypair"
  security_groups = ["k8s-external-access-sec-group", "k8s-internal-sec-group"]

  metadata = {
    this = "that"
  }

  network {
    port = openstack_networking_port_v2.port_6.id
  }
}