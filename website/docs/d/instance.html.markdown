---
layout: "aws"
page_title: "AWS: aws_instance"
sidebar_current: "docs-aws-datasource-instance"
description: |-
  Get information on an Amazon EC2 Instance.
---

# Data Source: aws_instance

Use this data source to get the ID of an Amazon EC2 Instance for use in other
resources.

## Example Usage

```hcl
data "aws_instance" "foo" {
  instance_id = "i-instanceid"

  filter {
    name   = "image-id"
    values = ["ami-xxxxxxxx"]
  }

  filter {
    name   = "tag:Name"
    values = ["instance-name-tag"]
  }
}
```

## Argument Reference

* `instance_id` - (Optional) Specify the exact Instance ID with which to populate the data source.

* `instance_tags` - (Optional) A mapping of tags, each pair of which must
exactly match a pair on the desired Instance.

* `filter` - (Optional) One or more name/value pairs to use as filters. There are
several valid keys, for a full reference, check out
[describe-instances in the AWS CLI reference][1].

* `get_password_data` - (Optional) If true, wait for password data to become available and retrieve it. Useful for getting the administrator password for instances running Microsoft Windows. The password data is exported to the `password_data` attribute. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.

* `get_user_data` - (Optional) Retrieve Base64 encoded User Data contents into the `user_data_base64` attribute. A SHA-1 hash of the User Data contents will always be present in the `user_data` attribute. Defaults to `false`.

~> **NOTE:** At least one of `filter`, `instance_tags`, or `instance_id` must be specified.

~> **NOTE:** If anything other than a single match is returned by the search,
Terraform will fail. Ensure that your search is specific enough to return
a single Instance ID only.

## Attributes Reference

`id` is set to the ID of the found Instance. In addition, the following attributes
are exported:

~> **NOTE:** Some values are not always set and may not be available for
interpolation.

* `ami` - The ID of the AMI used to launch the instance.
* `arn` - The ARN of the instance.
* `associate_public_ip_address` - Whether or not the Instance is associated with a public IP address or not (Boolean).
* `availability_zone` - The availability zone of the Instance.
* `ebs_block_device` - The EBS block device mappings of the Instance.
  * `delete_on_termination` - If the EBS volume will be deleted on termination.
  * `device_name` - The physical name of the device.
  * `encrypted` - If the EBS volume is encrypted.
  * `iops` - `0` If the EBS volume is not a provisioned IOPS image, otherwise the supported IOPS count.
  * `snapshot_id` - The ID of the snapshot.
  * `volume_size` - The size of the volume, in GiB.
  * `volume_type` - The volume type.
* `ebs_optimized` - Whether the Instance is EBS optimized or not (Boolean).
* `ephemeral_block_device` - The ephemeral block device mappings of the Instance.
  * `device_name` - The physical name of the device.
  * `no_device` - Whether the specified device included in the device mapping was suppressed or not (Boolean).
  * `virtual_name` - The virtual device name.
* `iam_instance_profile` - The name of the instance profile associated with the Instance.
* `ipv6_addresses` - The IPv6 addresses associated to the Instance, if applicable. **NOTE**: Unlike the IPv4 address, this doesn't change if you attach an EIP to the instance.
* `instance_state` - The state of the instance. One of: `pending`, `running`, `shutting-down`, `terminated`, `stopping`, `stopped`. See [Instance Lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html) for more information.
* `instance_type` - The type of the Instance.
* `key_name` - The key name of the Instance.
* `monitoring` - Whether detailed monitoring is enabled or disabled for the Instance (Boolean).
* `network_interface_id` - The ID of the network interface that was created with the Instance.
* `password_data` - Base-64 encoded encrypted password data for the instance.
  Useful for getting the administrator password for instances running Microsoft Windows.
  This attribute is only exported if `get_password_data` is true.
  See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
* `placement_group` - The placement group of the Instance.
* `private_dns` - The private DNS name assigned to the Instance. Can only be
  used inside the Amazon EC2, and only available if you've enabled DNS hostnames
  for your VPC.
* `private_ip` - The private IP address assigned to the Instance.
* `public_dns` - The public DNS name assigned to the Instance. For EC2-VPC, this
  is only available if you've enabled DNS hostnames for your VPC.
* `public_ip` - The public IP address assigned to the Instance, if applicable. **NOTE**: If you are using an [`aws_eip`](/docs/providers/aws/r/eip.html) with your instance, you should refer to the EIP's address directly and not use `public_ip`, as this field will change after the EIP is attached.
* `root_block_device` - The root block device mappings of the Instance
  * `delete_on_termination` - If the root block device will be deleted on termination.
  * `iops` - `0` If the volume is not a provisioned IOPS image, otherwise the supported IOPS count.
  * `volume_size` - The size of the volume, in GiB.
  * `volume_type` - The type of the volume.
* `security_groups` - The associated security groups.
* `source_dest_check` - Whether the network interface performs source/destination checking (Boolean).
* `subnet_id` - The VPC subnet ID.
* `user_data` - SHA-1 hash of User Data supplied to the Instance.
* `user_data_base64` - Base64 encoded contents of User Data supplied to the Instance. Valid UTF-8 contents can be decoded with the [`base64decode` function](/docs/configuration/functions/base64decode.html). This attribute is only exported if `get_user_data` is true.
* `tags` - A mapping of tags assigned to the Instance.
* `tenancy` - The tenancy of the instance: `dedicated`, `default`, `host`.
* `host_id` - The Id of the dedicated host the instance will be assigned to.
* `vpc_security_group_ids` - The associated security groups in a non-default VPC.
* `credit_specification` - The credit specification of the Instance.

[1]: http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html
