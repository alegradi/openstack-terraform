resource "openstack_networking_router_v2" "k8s_router" {
  name                = "k8s_router"
  admin_state_up      = true
  external_network_id = "544c39f7-7bc7-4abc-b195-68b56d80c8ac"
}

#------------------## IPv4 network ##------------------#
resource "openstack_networking_network_v2" "k8s_local_network" {
  name           = "k8s_local_network"
  admin_state_up = "true"
}

resource "openstack_networking_subnet_v2" "k8s-199-slash-24" {
  network_id = openstack_networking_network_v2.k8s_local_network.id
  cidr       = "192.168.199.0/24"
  ip_version = 4
}

resource "openstack_networking_router_interface_v2" "router_interface_1" {
  router_id = openstack_networking_router_v2.k8s_router.id
  subnet_id = openstack_networking_subnet_v2.k8s-199-slash-24.id
}
