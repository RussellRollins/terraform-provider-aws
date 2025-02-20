# Catch the following in issues:
# *aws_XXX
# * aws_XXX
# * `aws_XXX`
# -aws_XXX
# - aws_XXX
# - `aws_XXX`
# data "aws_XXX"
# resource "aws_XXX"
# NOTE: Go regexp does not support negative lookaheads
behavior "regexp_issue_labeler_v2" "service_labels" {
  regexp = "(\\* ?`?|- ?`?|data \"|resource \")aws_(\\w+)"

  label_map = {
    "service/acm" = [
      "aws_acm_",
    ],
    "service/acmpca" = [
      "aws_acmpca_",
    ],
    "service/alexaforbusiness" = [
      "aws_alexaforbusiness_",
    ],
    "service/amplify" = [
      "aws_amplify_",
    ],
    "service/apigateway" = [
      # Catch aws_api_gateway_XXX but not aws_api_gateway_v2_
      "aws_api_gateway_([^v]|v[^2]|v2[^_])",
    ],
    "service/apigatewayv2" = [
      "aws_api_gateway_v2_",
    ],
    "service/applicationautoscaling" = [
      "aws_appautoscaling_",
    ],
    "service/applicationdiscoveryservice" = [
      "aws_applicationdiscoveryservice_",
    ],
    "service/applicationinsights" = [
      "aws_applicationinsights_",
    ],
    "service/appmesh" = [
      "aws_appmesh_",
    ],
    "service/appstream" = [
      "aws_appstream_",
    ],
    "service/appsync" = [
      "aws_appsync_",
    ],
    "service/athena" = [
      "aws_athena_",
    ],
    "service/autoscaling" = [
      "aws_autoscaling_",
      "aws_launch_configuration",
    ],
    "service/autoscalingplans" = [
      "aws_autoscalingplans_",
    ],
    "service/batch" = [
      "aws_batch_",
    ],
    "service/budgets" = [
      "aws_budgets_",
    ],
    "service/cloud9" = [
      "aws_cloud9_",
    ],
    "service/clouddirectory" = [
      "aws_clouddirectory_",
    ],
    "service/cloudformation" = [
      "aws_cloudformation_",
    ],
    "service/cloudfront" = [
      "aws_cloudfront_",
    ],
    "service/cloudhsmv2" = [
      "aws_cloudhsm_v2_",
    ],
    "service/cloudsearch" = [
      "aws_cloudsearch_",
    ],
    "service/cloudtrail" = [
      "aws_cloudtrail_",
    ],
    "service/cloudwatch" = [
      "aws_cloudwatch_([^e]|e[^v]|ev[^e]|eve[^n]|even[^t]|event[^_]|[^l]|l[^o]|lo[^g]|log[^_])",
    ],
    "service/cloudwatchevents" = [
      "aws_cloudwatch_event_",
    ],
    "service/cloudwatchlogs" = [
      "aws_cloudwatch_log_",
    ],
    "service/codebuild" = [
      "aws_codebuild_",
    ],
    "service/codecommit" = [
      "aws_codecommit_",
    ],
    "service/codedeploy" = [
      "aws_codedeploy_",
    ],
    "service/codepipeline" = [
      "aws_codepipeline",
    ],
    "service/codestar" = [
      "aws_codestar_",
    ],
    "service/cognito" = [
      "aws_cognito_",
    ],
    "service/configservice" = [
      "aws_config_",
    ],
    "service/databasemigrationservice" = [
      "aws_dms_",
    ],
    "service/datapipeline" = [
      "aws_datapipeline_",
    ],
    "service/datasync" = [
      "aws_datasync_",
    ],
    "service/dax" = [
      "aws_dax_",
    ],
    "service/devicefarm" = [
      "aws_devicefarm_",
    ],
    "service/directconnect" = [
      "aws_dx_",
    ],
    "service/directoryservice" = [
      "aws_directory_service_",
    ],
    "service/dlm" = [
      "aws_dlm_",
    ],
    "service/dynamodb" = [
      "aws_dynamodb_",
    ],
    "service/ec2" = [
      "aws_ami",
      "aws_availability_zone",
      "aws_customer_gateway",
      "aws_(default_)?(network_acl|route_table|security_group|subnet|vpc)",
      "aws_ebs_",
      "aws_ec2_",
      "aws_egress_only_internet_gateway",
      "aws_eip",
      "aws_flow_log",
      "aws_instance",
      "aws_internet_gateway",
      "aws_key_pair",
      "aws_launch_template",
      "aws_main_route_table_association",
      "aws_network_interface",
      "aws_placement_group",
      "aws_spot",
      "aws_route(\"|`|$)",
    ],
    "service/ecr" = [
      "aws_ecr_",
    ],
    "service/ecs" = [
      "aws_ecs_",
    ],
    "service/efs" = [
      "aws_efs_",
    ],
    "service/eks" = [
      "aws_eks_",
    ],
    "service/elastic-transcoder" = [
      "aws_elastic_transcoder_",
    ],
    "service/elasticache" = [
      "aws_elasticache_",
    ],
    "service/elasticbeanstalk" = [
      "aws_elastic_beanstalk_",
    ],
    "service/elasticsearch" = [
      "aws_elasticsearch_",
    ],
    "service/elb" = [
      "aws_app_cookie_stickiness_policy",
      "aws_elb",
      "aws_lb_cookie_stickiness_policy",
      "aws_lb_ssl_negotiation_policy",
      "aws_load_balancer_",
      "aws_proxy_protocol_policy",
    ],
    "service/elbv2" = [
      "aws_(a)?lb(\"|`|$)",
      # Catch aws_lb_XXX but not aws_lb_cookie_ or aws_lb_ssl_ (Classic ELB)
      "aws_(a)?lb_([^c]|c[^o]|co[^o]|coo[^k]|cook[^i]|cooki[^e]|cookie[^_]|[^s]|s[^s]|ss[^l]|ssl[^_])",
    ],
    "service/emr" = [
      "aws_emr_",
    ],
    "service/firehose" = [
      "aws_kinesis_firehose_",
    ],
    "service/fms" = [
      "aws_fms_",
    ],
    "service/fsx" = [
      "aws_fsx_",
    ],
    "service/gamelift" = [
      "aws_gamelift_",
    ],
    "service/glacier" = [
      "aws_glacier_",
    ],
    "service/globalaccelerator" = [
      "aws_globalaccelerator_",
    ],
    "service/glue" = [
      "aws_glue_",
    ],
    "service/greengrass" = [
      "aws_greengrass_",
    ],
    "service/guardduty" = [
      "aws_guardduty_",
    ],
    "service/iam" = [
      "aws_iam_",
    ],
    "service/inspector" = [
      "aws_inspector_",
    ],
    "service/iot" = [
      "aws_iot_",
    ],
    "service/kafka" = [
      "aws_msk_",
    ],
    "service/kinesis" = [
      # Catch aws_kinesis_XXX but not aws_kinesis_firehose_
      "aws_kinesis_([^f]|f[^i]|fi[^r]|fir[^e]|fire[^h]|fireh[^o]|fireho[^s]|firehos[^e]|firehose[^_])",
    ],
    "service/kinesisanalytics" = [
      "aws_kinesisanalytics_",
    ],
    "service/kms" = [
      "aws_kms_",
    ],
    "service/lambda" = [
      "aws_lambda_",
    ],
    "service/lexmodelbuildingservice" = [
      "aws_lex_",
    ],
    "service/licensemanager" = [
      "aws_licensemanager_",
    ],
    "service/lightsail" = [
      "aws_lightsail_",
    ],
    "service/machinelearning" = [
      "aws_machinelearning_",
    ],
    "service/macie" = [
      "aws_macie_",
    ],
    "service/mediaconnect" = [
      "aws_media_connect_",
    ],
    "service/mediaconvert" = [
      "aws_media_convert_",
    ],
    "service/medialive" = [
      "aws_media_live_",
    ],
    "service/mediapackage" = [
      "aws_media_package_",
    ],
    "service/mediastore" = [
      "aws_media_store_",
    ],
    "service/mediatailor" = [
      "aws_media_tailor_",
    ],
    "service/mobile" = [
      "aws_mobile_",
    ],
    "service/mq" = [
      "aws_mq_",
    ],
    "service/neptune" = [
      "aws_neptune_",
    ],
    "service/opsworks" = [
      "aws_opsworks_",
    ],
    "service/organizations" = [
      "aws_organizations_",
    ],
    "service/pinpoint" = [
      "aws_pinpoint_",
    ],
    "service/polly" = [
      "aws_polly_",
    ],
    "service/pricing" = [
      "aws_pricing_",
    ],
    "service/ram" = [
      "aws_ram_",
    ],
    "service/rds" = [
      "aws_db_",
      "aws_rds_",
    ],
    "service/redshift" = [
      "aws_redshift_",
    ],
    "service/resourcegroups" = [
      "aws_resourcegroups_",
    ],
    "service/robomaker" = [
      "aws_robomaker_",
    ],
    "service/route53" = [
      # Catch aws_route53_XXX but not aws_route53_domains_ or aws_route53_resolver_
      "aws_route53_([^d]|d[^o]|do[^m]|dom[^a]|doma[^i]|domai[^n]|domain[^s]|domains[^_]|[^r]|r[^e]|re[^s]|res[^o]|reso[^l]|resol[^v]|resolv[^e]|resolve[^r]|resolver[^_])",
    ],
    "service/route53domains" = [
      "aws_route53_domains_",
    ],
    "service/route53resolver" = [
      "aws_route53_resolver_",
    ],
    "service/s3" = [
      "aws_canonical_user_id",
      "aws_s3_bucket",
    ],
    "service/s3control" = [
      "aws_s3_account_",
    ],
    "service/sagemaker" = [
      "aws_sagemaker_",
    ],
    "service/secretsmanager" = [
      "aws_secretsmanager_",
    ],
    "service/securityhub" = [
      "aws_securityhub_",
    ],
    "service/servicecatalog" = [
      "aws_servicecatalog_",
    ],
    "service/servicediscovery" = [
      "aws_service_discovery_",
    ],
    "service/servicequotas" = [
      "aws_servicequotas_",
    ],
    "service/ses" = [
      "aws_ses_",
    ],
    "service/sfn" = [
      "aws_sfn_",
    ],
    "service/shield" = [
      "aws_shield_",
    ],
    "service/simpledb" = [
      "aws_simpledb_",
    ],
    "service/snowball" = [
      "aws_snowball_",
    ],
    "service/sns" = [
      "aws_sns_",
    ],
    "service/sqs" = [
      "aws_sqs_",
    ],
    "service/ssm" = [
      "aws_ssm_",
    ],
    "service/storagegateway" = [
      "aws_storagegateway_",
    ],
    "service/sts" = [
      "aws_caller_identity",
    ],
    "service/swf" = [
      "aws_swf_",
    ],
    "service/transfer" = [
      "aws_transfer_",
    ],
    "service/waf" = [
      "aws_waf_",
      "aws_wafregional_",
    ],
    "service/workdocs" = [
      "aws_workdocs_",
    ],
    "service/workmail" = [
      "aws_workmail_",
    ],
    "service/workspaces" = [
      "aws_workspaces_",
    ],
    "service/xray" = [
      "aws_xray_",
    ],
  }
}

behavior "pull_request_path_labeler" "service_labels" {
  label_map = {
    # label provider related changes
    "provider" = [
      "aws/auth_helpers.go",
      "aws/awserr.go",
      "aws/config.go",
      "aws/*_aws_arn*",
      "aws/*_aws_ip_ranges*",
      "aws/*_aws_partition*",
      "aws/*_aws_region*",
      "aws/provider.go",
      "aws/utils.go",
      "website/docs/index.html.markdown",
      "website/**/arn*",
      "website/**/ip_ranges*",
      "website/**/partition*",
      "website/**/region*"
    ]
    # label test related changes
    "tests" = [
      "**/*_test.go",
      ".gometalinter.json",
      ".travis.yml"
    ]
    # label services
    "service/acm" = [
      "**/*_acm_*",
      "**/acm_*",
      "aws/tagsACM*"
    ]
    "service/acmpca" = [
      "**/*_acmpca_*",
      "**/acmpca_*",
      "aws/tagsACMPCA*"
    ]
    "service/alexaforbusiness" = [
      "**/*_alexaforbusiness_*",
      "**/alexaforbusiness_*"
    ]
    "service/amplify" = [
      "**/*_amplify_*",
      "**/amplify_*"
    ]
    "service/apigateway" = [
      "**/*_api_gateway_[^v][^2][^_]*",
      "**/api_gateway_[^v][^2][^_]*",
      "aws/tags_apigateway[^v][^2]*"
    ]
    "service/apigatewayv2" = [
      "**/*_api_gateway_v2_*",
      "**/api_gateway_v2_*",
      "aws/tags_apigatewayv2*"
    ]
    "service/applicationautoscaling" = [
      "**/*_appautoscaling_*",
      "**/appautoscaling_*"
    ]
    # "service/applicationdiscoveryservice" = [
    # 	"**/*_applicationdiscoveryservice_*",
    # 	"**/applicationdiscoveryservice_*"
    # ]
    "service/applicationinsights" = [
      "**/*_applicationinsights_*",
      "**/applicationinsights_*"
    ]
    "service/appmesh" = [
      "**/*_appmesh_*",
      "**/appmesh_*"
    ]
    "service/appstream" = [
      "**/*_appstream_*",
      "**/appstream_*"
    ]
    "service/appsync" = [
      "**/*_appsync_*",
      "**/appsync_*"
    ]
    "service/athena" = [
      "service/athena",
      "**/athena_*"
    ]
    "service/autoscaling" = [
      "**/*_autoscaling_*",
      "**/autoscaling_*",
      "aws/*_aws_launch_configuration*",
      "website/**/launch_configuration*"
    ]
    "service/autoscalingplans" = [
      "**/*_autoscalingplans_*",
      "**/autoscalingplans_*"
    ]
    "service/batch" = [
      "**/*_batch_*",
      "**/batch_*"
    ]
    "service/budgets" = [
      "**/*_budgets_*",
      "**/budgets_*"
    ]
    "service/cloud9" = [
      "**/*_cloud9_*",
      "**/cloud9_*"
    ]
    "service/clouddirectory" = [
      "**/*_clouddirectory_*",
      "**/clouddirectory_*"
    ]
    "service/cloudformation" = [
      "**/*_cloudformation_*",
      "**/cloudformation_*"
    ]
    "service/cloudfront" = [
      "**/*_cloudfront_*",
      "**/cloudfront_*",
      "aws/tagsCloudFront*"
    ]
    "service/cloudhsmv2" = [
      "**/*_cloudhsm_v2_*",
      "**/cloudhsm_v2_*"
    ]
    "service/cloudsearch" = [
      "**/*_cloudsearch_*",
      "**/cloudsearch_*"
    ]
    "service/cloudtrail" = [
      "**/*_cloudtrail_*",
      "**/cloudtrail_*",
      "aws/tagsCloudtrail*"
    ]
    "service/cloudwatch" = [
      "**/*_cloudwatch_dashboard*",
      "**/*_cloudwatch_metric_alarm*",
      "**/cloudwatch_dashboard*",
      "**/cloudwatch_metric_alarm*"
    ]
    "service/cloudwatchevents" = [
      "**/*_cloudwatch_event_*",
      "**/cloudwatch_event_*"
    ]
    "service/cloudwatchlogs" = [
      "**/*_cloudwatch_log_*",
      "**/cloudwatch_log_*"
    ]
    "service/codebuild" = [
      "**/*_codebuild_*",
      "**/codebuild_*",
      "aws/tagsCodeBuild*"
    ]
    "service/codecommit" = [
      "**/*_codecommit_*",
      "**/codecommit_*"
    ]
    "service/codedeploy" = [
      "**/*_codedeploy_*",
      "**/codedeploy_*"
    ]
    "service/codepipeline" = [
      "**/*_codepipeline_*",
      "**/codepipeline_*"
    ]
    "service/codestar" = [
      "**/*_codestar_*",
      "**/codestar_*"
    ]
    "service/cognito" = [
      "**/*_cognito_*",
      "**/_cognito_*"
    ]
    "service/configservice" = [
      "aws/*_aws_config_*",
      "website/**/config_*"
    ]
    "service/databasemigrationservice" = [
      "**/*_dms_*",
      "**/dms_*",
      "aws/tags_dms*"
    ]
    "service/datapipeline" = [
      "**/*_datapipeline_*",
      "**/datapipeline_*",
    ]
    "service/datasync" = [
      "**/*_datasync_*",
      "**/datasync_*",
    ]
    "service/dax" = [
      "**/*_dax_*",
      "**/dax_*",
      "aws/tagsDAX*"
    ]
    "service/devicefarm" = [
      "**/*_devicefarm_*",
      "**/devicefarm_*"
    ]
    "service/directconnect" = [
      "**/*_dx_*",
      "**/dx_*",
      "aws/tagsDX*"
    ]
    "service/directoryservice" = [
      "**/*_directory_service_*",
      "**/directory_service_*",
      "aws/tagsDS*"
    ]
    "service/dlm" = [
      "**/*_dlm_*",
      "**/dlm_*"
    ]
    "service/dynamodb" = [
      "**/*_dynamodb_*",
      "**/dynamodb_*"
    ]
    # Special casing this one because the files aren't _ec2_
    "service/ec2" = [
      "**/*_ec2_*",
      "**/ec2_*",
      "aws/*_aws_ami*",
      "aws/*_aws_availability_zone*",
      "aws/*_aws_customer_gateway*",
      "aws/*_aws_default_network_acl*",
      "aws/*_aws_default_route_table*",
      "aws/*_aws_default_security_group*",
      "aws/*_aws_default_subnet*",
      "aws/*_aws_default_vpc*",
      "aws/*_aws_ebs_*",
      "aws/*_aws_egress_only_internet_gateway*",
      "aws/*_aws_eip*",
      "aws/*_aws_flow_log*",
      "aws/*_aws_instance*",
      "aws/*_aws_internet_gateway*",
      "aws/*_aws_key_pair*",
      "aws/*_aws_launch_template*",
      "aws/*_aws_main_route_table_association*",
      "aws/*_aws_nat_gateway*",
      "aws/*_aws_network_acl*",
      "aws/*_aws_network_interface*",
      "aws/*_aws_placement_group*",
      "aws/*_aws_route_table*",
      "aws/*_aws_route.*",
      "aws/*_aws_security_group*",
      "aws/*_aws_spot*",
      "aws/*_aws_subnet*",
      "aws/*_aws_vpc*",
      "aws/*_aws_vpn*",
      "website/**/availability_zone*",
      "website/**/customer_gateway*",
      "website/**/default_network_acl*",
      "website/**/default_route_table*",
      "website/**/default_security_group*",
      "website/**/default_subnet*",
      "website/**/default_vpc*",
      "website/**/ebs_*",
      "website/**/egress_only_internet_gateway*",
      "website/**/eip*",
      "website/**/flow_log*",
      "website/**/instance*",
      "website/**/internet_gateway*",
      "website/**/key_pair*",
      "website/**/launch_template*",
      "website/**/main_route_table_association*",
      "website/**/nat_gateway*",
      "website/**/network_acl*",
      "website/**/network_interface*",
      "website/**/placement_group*",
      "website/**/route_table*",
      "website/**/route.*",
      "website/**/security_group*",
      "website/**/spot_*",
      "website/**/subnet.*",
      "website/**/vpc*",
      "website/**/vpn*"
    ]
    "service/ecr" = [
      "**/*_ecr_*",
      "**/ecr_*"
    ]
    "service/ecs" = [
      "**/*_ecs_*",
      "**/ecs_*"
    ]
    "service/efs" = [
      "**/*_efs_*",
      "**/efs_*",
      "aws/tagsEFS*"
    ]
    "service/eks" = [
      "**/*_eks_*",
      "**/eks_*"
    ]
    "service/elastic-transcoder" = [
      "**/*_elastic_transcoder_*",
      "**/elastic_transcoder_*"
    ]
    "service/elasticache" = [
      "**/*_elasticache_*",
      "**/elasticache_*",
      "aws/tagsEC*"
    ]
    "service/elasticbeanstalk" = [
      "**/*_elastic_beanstalk_*",
      "**/elastic_beanstalk_*",
      "aws/tagsBeanstalk*"
    ]
    "service/elasticsearch" = [
      "**/*_elasticsearch_*",
      "**/elasticsearch_*",
      "**/*_elasticsearchservice*"
    ]
    "service/elb" = [
      "aws/*_aws_app_cookie_stickiness_policy*",
      "aws/*_aws_elb*",
      "aws/*_aws_lb_cookie_stickiness_policy*",
      "aws/*_aws_lb_ssl_negotiation_policy*",
      "aws/*_aws_proxy_protocol_policy*",
      "aws/tagsELB*",
      "website/**/app_cookie_stickiness_policy*",
      "website/**/elb*",
      "website/**/lb_cookie_stickiness_policy*",
      "website/**/lb_ssl_negotiation_policy*",
      "website/**/proxy_protocol_policy*"
    ]
    "service/elbv2" = [
      "aws/*_lb.*",
      "aws/*_lb_listener*",
      "aws/*_lb_target_group*",
      "website/**/lb.*",
      "website/**/lb_listener*",
      "website/**/lb_target_group*"
    ]
    "service/emr" = [
      "**/*_emr_*",
      "**/emr_*"
    ]
    "service/firehose" = [
      "**/*_firehose_*",
      "**/firehose_*"
    ]
    "service/fms" = [
      "**/*_fms_*",
      "**/fms_*"
    ]
    "service/fsx" = [
      "**/*_fsx_*",
      "**/fsx_*"
    ]
    "service/gamelift" = [
      "**/*_gamelift_*",
      "**/gamelift_*"
    ]
    "service/glacier" = [
      "**/*_glacier_*",
      "**/glacier_*"
    ]
    "service/globalaccelerator" = [
      "**/*_globalaccelerator_*",
      "**/globalaccelerator_*"
    ]
    "service/glue" = [
      "**/*_glue_*",
      "**/glue_*"
    ]
    "service/greengrass" = [
      "**/*_greengrass_*",
      "**/greengrass_*"
    ]
    "service/guardduty" = [
      "**/*_guardduty_*",
      "**/guardduty_*"
    ]
    "service/iam" = [
      "**/*_iam_*",
      "**/iam_*"
    ]
    "service/inspector" = [
      "**/*_inspector_*",
      "**/inspector_*",
      "aws/tagsInspector*"
    ]
    "service/iot" = [
      "**/*_iot_*",
      "**/iot_*"
    ]
    "service/kafka" = [
      "**/*_msk_*",
      "**/msk_*",
    ]
    "service/kinesis" = [
      "aws/*_aws_kinesis_stream*",
      "aws/tags_kinesis*",
      "website/kinesis_stream*"
    ]
    "service/kinesisanalytics" = [
      "**/*_kinesisanalytics_*",
      "**/kinesisanalytics_*"
    ]
    "service/kms" = [
      "**/*_kms_*",
      "**/kms_*",
      "aws/tagsKMS*"
    ]
    "service/lambda" = [
      "**/*_lambda_*",
      "**/lambda_*",
      "aws/tagsLambda*"
    ]
    "service/lexmodelbuildingservice" = [
      "**/*_lex_*",
      "**/lex_*"
    ]
    "service/licensemanager" = [
      "**/*_licensemanager_*",
      "**/licensemanager_*"
    ]
    "service/lightsail" = [
      "**/*_lightsail_*",
      "**/lightsail_*"
    ]
    "service/machinelearning" = [
      "**/*_machinelearning_*",
      "**/machinelearning_*"
    ]
    "service/macie" = [
      "**/*_macie_*",
      "**/macie_*"
    ]
    "service/mediaconnect" = [
      "**/*_media_connect_*",
      "**/media_connect_*"
    ]
    "service/mediaconvert" = [
      "**/*_media_convert_*",
      "**/media_convert_*"
    ]
    "service/medialive" = [
      "**/*_media_live_*",
      "**/media_live_*"
    ]
    "service/mediapackage" = [
      "**/*_media_package_*",
      "**/media_package_*"
    ]
    "service/mediastore" = [
      "**/*_media_store_*",
      "**/media_store_*"
    ]
    "service/mediatailor" = [
      "**/*_media_tailor_*",
      "**/media_tailor_*",
    ]
    "service/mobile" = [
      "**/*_mobile_*",
      "**/mobile_*"
    ],
    "service/mq" = [
      "**/*_mq_*",
      "**/mq_*"
    ]
    "service/neptune" = [
      "**/*_neptune_*",
      "**/neptune_*",
      "aws/tagsNeptune*"
    ]
    "service/opsworks" = [
      "**/*_opsworks_*",
      "**/opsworks_*",
      "aws/tagsOpsworks*"
    ]
    "service/organizations" = [
      "**/*_organizations_*",
      "**/organizations_*"
    ]
    "service/pinpoint" = [
      "**/*_pinpoint_*",
      "**/pinpoint_*"
    ]
    "service/polly" = [
      "**/*_polly_*",
      "**/polly_*"
    ]
    "service/pricing" = [
      "**/*_pricing_*",
      "**/pricing_*"
    ]
    "service/ram" = [
      "**/*_ram_*",
      "**/ram_*"
    ]
    "service/rds" = [
      "aws/*_aws_db_*",
      "aws/*_aws_rds_*",
      "aws/tagsRDS*",
      "website/**/db_*",
      "website/**/rds_*"
    ]
    "service/redshift" = [
      "**/*_redshift_*",
      "**/redshift_*",
      "aws/tagsRedshift*"
    ]
    "service/resourcegroups" = [
      "**/*_resourcegroups_*",
      "**/resourcegroups_*"
    ]
    "service/route53" = [
      "**/*_route53_delegation_set*",
      "**/*_route53_health_check*",
      "**/*_route53_query_log*",
      "**/*_route53_record*",
      "**/*_route53_zone*",
      "**/route53_delegation_set*",
      "**/route53_health_check*",
      "**/route53_query_log*",
      "**/route53_record*",
      "**/route53_zone*",
      "aws/tags_route53*"
    ]
    "service/robomaker" = [
      "**/*_robomaker_*",
      "**/robomaker_*",
    ]
    "service/route53domains" = [
      "**/*_route53_domains_*",
      "**/route53_domains_*"
    ]
    "service/s3" = [
      "**/*_s3_bucket*",
      "**/s3_bucket*",
      "aws/*_aws_canonical_user_id*",
      "website/**/canonical_user_id*"
    ]
    "service/s3control" = [
      "**/*_s3_account_*",
      "**/s3_account_*"
    ]
    "service/sagemaker" = [
      "**/*_sagemaker_*",
      "**/sagemaker_*"
    ]
    "service/secretsmanager" = [
      "**/*_secretsmanager_*",
      "**/secretsmanager_*",
      "aws/tagsSecretsManager*"
    ]
    "service/securityhub" = [
      "**/*_securityhub_*",
      "**/securityhub_*"
    ]
    "service/servicecatalog" = [
      "**/*_servicecatalog_*",
      "**/servicecatalog_*"
    ]
    "service/servicediscovery" = [
      "**/*_service_discovery_*",
      "**/service_discovery_*"
    ]
    "service/servicequotas" = [
      "**/*_servicequotas_*",
      "**/servicequotas_*"
    ]
    "service/ses" = [
      "**/*_ses_*",
      "**/ses_*",
      "aws/tagsSSM*"
    ]
    "service/sfn" = [
      "**/*_sfn_*",
      "**/sfn_*"
    ]
    "service/shield" = [
      "**/*_shield_*",
      "**/shield_*",
    ],
    "service/simpledb" = [
      "**/*_simpledb_*",
      "**/simpledb_*"
    ]
    "service/snowball" = [
      "**/*_snowball_*",
      "**/snowball_*"
    ]
    "service/sns" = [
      "**/*_sns_*",
      "**/sns_*"
    ]
    "service/sqs" = [
      "**/*_sqs_*",
      "**/sqs_*"
    ]
    "service/ssm" = [
      "**/*_ssm_*",
      "**/ssm_*"
    ]
    "service/storagegateway" = [
      "**/*_storagegateway_*",
      "**/storagegateway_*"
    ]
    "service/sts" = [
      "aws/*_aws_caller_identity*",
      "website/**/caller_identity*"
    ]
    "service/swf" = [
      "**/*_swf_*",
      "**/swf_*"
    ]
    "service/transfer" = [
      "**/*_transfer_*",
      "**/transfer_*"
    ]
    "service/waf" = [
      "**/*_waf_*",
      "**/waf_*",
      "**/*_wafregional_*",
      "**/wafregional_*"
    ]
    "service/workdocs" = [
      "**/*_workdocs_*",
      "**/workdocs_*"
    ]
    "service/workmail" = [
      "**/*_workmail_*",
      "**/workmail_*"
    ]
    "service/workspaces" = [
      "**/*_workspaces_*",
      "**/workspaces_*"
    ]
    "service/xray" = [
      "**/*_xray_*",
      "**/xray_*"
    ]
  }
}
