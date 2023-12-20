# Openstack Terraform configuration

In this repo you can find examples of using Terraform to manage your Openstack deployments.

## Requirements

1. An Openstack instance on which you can deploy. At the writing of this I've used [eCloud Flex](https://www.ans.co.uk/docs/ecloud/flex/index.html)

2. Public IPs already assigned to your project. I've done this so that the floating IPs are constant. This way I don't need to make changes to DNS or my Ansible inventory to be able to access anything.

3. Export your Openstack account details as environment variables. An example `example-secret.env` is provided.

## How to use

1. Clone repo
2. Populate `example-secret.env` with your variables
3. Export the variables with `source example-secret.env`
4. Run Terraform