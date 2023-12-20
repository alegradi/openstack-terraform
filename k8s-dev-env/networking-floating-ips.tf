# Floating IPs exported as environment variables

resource "openstack_networking_floatingip_associate_v2" "fip_1" {
  floating_ip = var.FIP1
  port_id     = openstack_networking_port_v2.port_1.id
}

resource "openstack_networking_floatingip_associate_v2" "fip_2" {
  floating_ip = var.FIP2
  port_id     = openstack_networking_port_v2.port_2.id
}

resource "openstack_networking_floatingip_associate_v2" "fip_3" {
  floating_ip = var.FIP3
  port_id     = openstack_networking_port_v2.port_3.id
}

resource "openstack_networking_floatingip_associate_v2" "fip_4" {
  floating_ip = var.FIP4
  port_id     = openstack_networking_port_v2.port_4.id
}

resource "openstack_networking_floatingip_associate_v2" "fip_5" {
  floating_ip = var.FIP5
  port_id     = openstack_networking_port_v2.port_5.id
}

resource "openstack_networking_floatingip_associate_v2" "fip_6" {
  floating_ip = var.FIP6
  port_id     = openstack_networking_port_v2.port_6.id
}
