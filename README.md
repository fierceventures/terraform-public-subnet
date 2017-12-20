# AWS Public Subnet

This module can be used to deploy an AWS public subnet which is intended to be used with a [nat gateway](https://github.com/fierceventures/terraform-nat-gateway).

Module Input Variables
----------------------

- `region` - The region in which vpc resides
- `env` - The environment name
- `name` - The name of the subnet
- `vpc_id` - The id of the vpc
- `cidr_block` - The cidr block for the subnet
- `vpc_main_route_table_id` - The main route table id of the vpc

Usage 
-----

```hcl
module "public_subnet" {
  source = "github.com/fierceventures/terraform-public-subnet"
  region = "ap-southeast-2"
  env = "test"
  name = "primary"
  vpc_id = "${module.vpc.id}"
  cidr_block = "172.31.1.0/16"
  vpc_main_route_table_id = "${module.vpc.main_route_table_id}"
}
```

Outputs
-------
- `id` - The id of the subnet

Author
------
Created and maintained by [Fierce Ventures](https://github.com/fierceventures/)
