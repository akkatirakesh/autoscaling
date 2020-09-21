| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| desire\_capacity | enter the desired capacity | `any` | n/a | yes |
| health\_check\_grace\_period | enter the grace period of health check | `any` | n/a | yes |
| health\_check\_type | enter the health check type | `any` | n/a | yes |
| lc | enter the launch\_configuration | `any` | n/a | yes |
| max\_size | enter the maximum size | `any` | n/a | yes |
| min\_size | enter the minimum size | `any` | n/a | yes |
| name | enter the name of the auto scaling group | `any` | n/a | yes |
| subnet1 | enter the subnet1 id | `any` | n/a | yes |
| subnet2 | enter the subnet2 id | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| arn | arn of the auto scaling group |
| id | id of the auto scaling group |
| name | name of the auto scaling group |

In this module, we are creating a auto scaling group by taking the launch configuration from the github link where a launch template has been created.

