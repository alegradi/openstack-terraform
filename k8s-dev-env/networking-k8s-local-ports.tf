resource "openstack_networking_port_v2" "port_1" {
  name           = "port_1"
  network_id     = openstack_networking_network_v2.k8s_local_network.id
  admin_state_up = "true"
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.k8s-199-slash-24.id
    ip_address = "192.168.199.21"
  }
}

resource "openstack_networking_port_v2" "port_2" {
  name           = "port_2"
  network_id     = openstack_networking_network_v2.k8s_local_network.id
  admin_state_up = "true"
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.k8s-199-slash-24.id
    ip_address = "192.168.199.22"
  }
}

resource "openstack_networking_port_v2" "port_3" {
  name           = "port_3"
  network_id     = openstack_networking_network_v2.k8s_local_network.id
  admin_state_up = "true"
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.k8s-199-slash-24.id
    ip_address = "192.168.199.23"
  }
}

resource "openstack_networking_port_v2" "port_4" {
  name           = "port_4"
  network_id     = openstack_networking_network_v2.k8s_local_network.id
  admin_state_up = "true"
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.k8s-199-slash-24.id
    ip_address = "192.168.199.31"
  }
}

resource "openstack_networking_port_v2" "port_5" {
  name           = "port_5"
  network_id     = openstack_networking_network_v2.k8s_local_network.id
  admin_state_up = "true"
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.k8s-199-slash-24.id
    ip_address = "192.168.199.32"
  }
}

resource "openstack_networking_port_v2" "port_6" {
  name           = "port_6"
  network_id     = openstack_networking_network_v2.k8s_local_network.id
  admin_state_up = "true"
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.k8s-199-slash-24.id
    ip_address = "192.168.199.100"
  }
}
