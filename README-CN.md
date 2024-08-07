# 下线公告

感谢您对阿里云 Terraform Module 的关注，即日起，本 Module 将停止维护并会在将来正式下线。推荐您使用 [terraform-alicloud-ecs-instance](https://registry.terraform.io/modules/alibaba/ecs-instance/alicloud/latest) 作为替代方案。更多丰富的 Module 可在 [阿里云 Terraform Module](https://registry.terraform.io/browse/modules?provider=alibaba) 中搜索获取。

再次感谢您的理解和合作。

terraform-alicloud-ecs-gpu-instance
=====================================================================

本 Terraform 模块将用于在阿里云上创建ECS GPU实例。

本 Module 支持创建以下资源:

* [ECS Instance](https://www.terraform.io/docs/providers/alicloud/r/instance.html)

## 用法

```hcl
module "ecs_instance" {
  source = "terraform-alicloud-modules/ecs-gpu-instance/alicloud"

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

## 示例

* [complete](https://github.com/terraform-alicloud-modules/terraform-alicloud-ecs-ecs-gpu-instance/tree/master/examples/complete)

## 注意事项
本Module从版本v1.2.0开始已经移除掉如下的 provider 的显示设置：

```hcl
provider "alicloud" {
  profile                 = var.profile != "" ? var.profile : null
  shared_credentials_file = var.shared_credentials_file != "" ? var.shared_credentials_file : null
  region                  = var.region != "" ? var.region : null
  skip_region_validation  = var.skip_region_validation
  configuration_source    = "terraform-alicloud-modules/ecs-ecs-gpu-instance"
}
```

如果你依然想在Module中使用这个 provider 配置，你可以在调用Module的时候，指定一个特定的版本，比如 1.1.0:

```hcl
module "ecs_instance" {
  source               = "terraform-alicloud-modules/ecs-gpu-instance/alicloud"
  version              = "1.1.0"
  region               = "cn-hangzhou"
  profile              = "Your-Profile-Name"
  name                 = "TF-ECS-Instance"
  instance_type_family = "ecs.gn6v"
  // ...
}
```

如果你想对正在使用中的Module升级到 1.2.0 或者更高的版本，那么你可以在模板中显示定义一个系统过Region的provider：
```hcl
provider "alicloud" {
  region  = "cn-hangzhou"
  profile = "Your-Profile-Name"
}
module "ecs_instance" {
  source               = "terraform-alicloud-modules/ecs-gpu-instance/alicloud"
  name                 = "TF-ECS-Instance"
  instance_type_family = "ecs.gn6v"
  // ...
}
```
或者，如果你是多Region部署，你可以利用 `alias` 定义多个 provider，并在Module中显示指定这个provider：

```hcl
provider "alicloud" {
  region  = "cn-hangzhou"
  profile = "Your-Profile-Name"
  alias   = "hz"
}
module "ecs_instance" {
  source               = "terraform-alicloud-modules/ecs-gpu-instance/alicloud"
  providers = {
    alicloud = alicloud.hz
  }
  name                 = "TF-ECS-Instance"
  instance_type_family = "ecs.gn6v"
  // ...
}
```

定义完provider之后，运行命令 `terraform init` 和 `terraform apply` 来让这个provider生效即可。

更多provider的使用细节，请移步[How to use provider in the module](https://www.terraform.io/docs/language/modules/develop/providers.html#passing-providers-explicitly)

## Terraform 版本

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.56.0 |

提交问题
------
如果在使用该 Terraform Module 的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/terraform-providers/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

**注意:** 不建议在该 Module 仓库中直接提交 Issue。

作者
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

许可
----
Apache 2 Licensed. See LICENSE for full details.

参考
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
