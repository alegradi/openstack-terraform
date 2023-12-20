#------------------## Control Plane Sec Group and Rules ##------------------#
resource "openstack_networking_secgroup_v2" "k8s-control-plane-sec-group" {
  name        = "k8s-control-plane-sec-group"
  description = "k8s Control Plane Security Group"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_k8s_6443" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "6443"
  port_range_max    = "6443"
  remote_ip_prefix  = "192.168.199.0/24"
  security_group_id = openstack_networking_secgroup_v2.k8s-control-plane-sec-group.id
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_k8s_2379_2380" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "2379"
  port_range_max    = "2380"
  remote_ip_prefix  = "192.168.199.0/24"
  security_group_id = openstack_networking_secgroup_v2.k8s-control-plane-sec-group.id
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_k8s_10250" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "10250"
  port_range_max    = "10250"
  remote_ip_prefix  = "192.168.199.0/24"
  security_group_id = openstack_networking_secgroup_v2.k8s-control-plane-sec-group.id
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_k8s_10257" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "10257"
  port_range_max    = "10257"
  remote_ip_prefix  = "192.168.199.0/24"
  security_group_id = openstack_networking_secgroup_v2.k8s-control-plane-sec-group.id
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_k8s_10259" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "10259"
  port_range_max    = "10259"
  remote_ip_prefix  = "192.168.199.0/24"
  security_group_id = openstack_networking_secgroup_v2.k8s-control-plane-sec-group.id
}
