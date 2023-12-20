#------------------## k8s internal sec group ##------------------#
resource "openstack_networking_secgroup_v2" "k8s-internal-sec-group" {
  name        = "k8s-internal-sec-group"
  description = "k8s Internal Security Group"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_k8s_internal_allow_179" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "179"
  port_range_max    = "179"
  remote_ip_prefix  = "192.168.199.0/24"
  security_group_id = openstack_networking_secgroup_v2.k8s-internal-sec-group.id
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_k8s_internal_allow_443" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "443"
  port_range_max    = "443"
  remote_ip_prefix  = "192.168.199.0/24"
  security_group_id = openstack_networking_secgroup_v2.k8s-internal-sec-group.id
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_k8s_internal_allow_80" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "80"
  port_range_max    = "80"
  remote_ip_prefix  = "192.168.199.0/24"
  security_group_id = openstack_networking_secgroup_v2.k8s-internal-sec-group.id
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_k8s_internal_allow_8443" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "8443"
  port_range_max    = "8443"
  remote_ip_prefix  = "192.168.199.0/24"
  security_group_id = openstack_networking_secgroup_v2.k8s-internal-sec-group.id
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_k8s_internal_allow_53" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "53"
  port_range_max    = "53"
  remote_ip_prefix  = "192.168.199.0/24"
  security_group_id = openstack_networking_secgroup_v2.k8s-internal-sec-group.id
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_k8s_internal_allow_53_udp" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "udp"
  port_range_min    = "53"
  port_range_max    = "53"
  remote_ip_prefix  = "192.168.199.0/24"
  security_group_id = openstack_networking_secgroup_v2.k8s-internal-sec-group.id
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_k8s_internal_allow_8080_tcp" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "8080"
  port_range_max    = "8080"
  remote_ip_prefix  = "192.168.199.0/24"
  security_group_id = openstack_networking_secgroup_v2.k8s-internal-sec-group.id
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_k8s_internal_allow_30000_34000_tcp" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "30000"
  port_range_max    = "34000"
  remote_ip_prefix  = "192.168.199.0/24"
  security_group_id = openstack_networking_secgroup_v2.k8s-internal-sec-group.id
}
