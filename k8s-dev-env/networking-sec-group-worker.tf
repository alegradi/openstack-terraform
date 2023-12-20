#------------------## Control Worker Sec Group and Rules ##------------------#
resource "openstack_networking_secgroup_v2" "k8s-worker-sec-group" {
  name        = "k8s-worker-sec-group"
  description = "k8s Worker Security Group"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_k8s_worker_10250" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "10250"
  port_range_max    = "10250"
  remote_ip_prefix  = "192.168.199.0/24"
  security_group_id = openstack_networking_secgroup_v2.k8s-worker-sec-group.id
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_k8s_worker_30000-32767" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "30000"
  port_range_max    = "32767"
  remote_ip_prefix  = "192.168.199.0/24"
  security_group_id = openstack_networking_secgroup_v2.k8s-worker-sec-group.id
}
