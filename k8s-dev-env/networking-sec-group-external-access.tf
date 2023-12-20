#------------------## External Access Sec Group and Rules ##------------------#
resource "openstack_networking_secgroup_v2" "k8s-external-access-sec-group" {
  name        = "k8s-external-access-sec-group"
  description = "k8s External Access Sec Group"
}

resource "openstack_networking_secgroup_rule_v2" "k8s_ipv4_icmp_all_allow" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "icmp"
  security_group_id = openstack_networking_secgroup_v2.k8s-external-access-sec-group.id
}

resource "openstack_networking_secgroup_rule_v2" "k8s_ipv6_icmp_all_allow" {
  direction         = "ingress"
  ethertype         = "IPv6"
  protocol          = "ipv6-icmp"
  security_group_id = openstack_networking_secgroup_v2.k8s-external-access-sec-group.id
}

resource "openstack_networking_secgroup_rule_v2" "k8s_ipv4_ssh_allow" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "22"
  port_range_max    = "22"
  security_group_id = openstack_networking_secgroup_v2.k8s-external-access-sec-group.id
}

resource "openstack_networking_secgroup_rule_v2" "k8s_ipv6_ssh_allow" {
  direction         = "ingress"
  ethertype         = "IPv6"
  protocol          = "tcp"
  port_range_min    = "22"
  port_range_max    = "22"
  security_group_id = openstack_networking_secgroup_v2.k8s-external-access-sec-group.id
}

resource "openstack_networking_secgroup_rule_v2" "k8s_ipv4_443_allow" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "443"
  port_range_max    = "443"
  security_group_id = openstack_networking_secgroup_v2.k8s-external-access-sec-group.id
}

resource "openstack_networking_secgroup_rule_v2" "k8s_ipv4_80_allow" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "80"
  port_range_max    = "80"
  security_group_id = openstack_networking_secgroup_v2.k8s-external-access-sec-group.id
}

resource "openstack_networking_secgroup_rule_v2" "k8s_ipv4_6443_allow" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "8443"
  port_range_max    = "8443"
  security_group_id = openstack_networking_secgroup_v2.k8s-external-access-sec-group.id
}

resource "openstack_networking_secgroup_rule_v2" "k8s_ipv4_8090_allow" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "8090"
  port_range_max    = "8090"
  security_group_id = openstack_networking_secgroup_v2.k8s-external-access-sec-group.id
}
