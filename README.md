Terraform module for creating ECS GPU instance(s) on Alibaba Cloud.  
terraform-alicloud-ecs-gpu-instance
---------------

English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-ecs-ecs-gpu-instance/blob/master/README-CN.md)

Terraform module which creates ecs gpu instance based on ecs on Alibaba Cloud. 

These types of resources are supported:

* [ECS Instance](https://www.terraform.io/docs/providers/alicloud/r/instance.html)

## Usage

```hcl
module "ecs_instance" {
  source = "terraform-alicloud-modules/ecs-ecs-gpu-instance/alicloud"
  region                      = "cn-hangzhou"
  profile                     ="Your-Profile-Name"

  name                        = "TF-ECS-Instance"
  instance_type_family        = "ecs.gn6v"
  password                    = "YourPassoword123"
  vswitch_id                  = "vsw-fhuqiexxxxxxxxxxxx"
  security_group_ids          = ["sg-12345678"]
  associate_public_ip_address = true
  internet_max_bandwidth_out  = 10
  instance_charge_type        = "PrePaid"
}
```

## Examples

* [complete](https://github.com/terraform-alicloud-modules/terraform-alicloud-ecs-ecs-gpu-instance/tree/master/examples/complete)

## Notes

From the version v1.9.0, the module has removed the following `provider` setting:
More details see [How to use provider in the module](https://www.terraform.io/docs/language/modules/develop/providers.html#passing-providers-explicitly)

Submit Issues
-------------
If you have any problems when using this module, please opening a [provider issue](https://github.com/terraform-providers/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend to open an issue on this repo.

Authors
-------
Created and maintained by He Guimin(@xiaozhu36, heguimin36@163.com) and Yi Jincheng(yi785301535@163.com) 

License
----
Apache 2 Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
