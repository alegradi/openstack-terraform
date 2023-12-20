resource "openstack_compute_keypair_v2" "ssh_key" {
    name       = "openstack_keypair"
    public_key = file(var.SSH_KEYPAIR)
}
