local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='data', url='', help=''),
  access_approval_folder_service_account: (import 'access_approval_folder_service_account.libsonnet'),
  access_approval_organization_service_account: (import 'access_approval_organization_service_account.libsonnet'),
  access_approval_project_service_account: (import 'access_approval_project_service_account.libsonnet'),
  active_folder: (import 'active_folder.libsonnet'),
  alloydb_locations: (import 'alloydb_locations.libsonnet'),
  alloydb_supported_database_flags: (import 'alloydb_supported_database_flags.libsonnet'),
  app_engine_default_service_account: (import 'app_engine_default_service_account.libsonnet'),
  artifact_registry_repository: (import 'artifact_registry_repository.libsonnet'),
  beyondcorp_app_connection: (import 'beyondcorp_app_connection.libsonnet'),
  beyondcorp_app_connector: (import 'beyondcorp_app_connector.libsonnet'),
  beyondcorp_app_gateway: (import 'beyondcorp_app_gateway.libsonnet'),
  bigquery_default_service_account: (import 'bigquery_default_service_account.libsonnet'),
  billing_account: (import 'billing_account.libsonnet'),
  client_config: (import 'client_config.libsonnet'),
  client_openid_userinfo: (import 'client_openid_userinfo.libsonnet'),
  cloud_asset_resources_search_all: (import 'cloud_asset_resources_search_all.libsonnet'),
  cloud_identity_group_memberships: (import 'cloud_identity_group_memberships.libsonnet'),
  cloud_identity_groups: (import 'cloud_identity_groups.libsonnet'),
  cloud_run_locations: (import 'cloud_run_locations.libsonnet'),
  cloud_run_service: (import 'cloud_run_service.libsonnet'),
  cloudbuild_trigger: (import 'cloudbuild_trigger.libsonnet'),
  cloudfunctions2_function: (import 'cloudfunctions2_function.libsonnet'),
  cloudfunctions_function: (import 'cloudfunctions_function.libsonnet'),
  composer_environment: (import 'composer_environment.libsonnet'),
  composer_image_versions: (import 'composer_image_versions.libsonnet'),
  compute_address: (import 'compute_address.libsonnet'),
  compute_addresses: (import 'compute_addresses.libsonnet'),
  compute_backend_bucket: (import 'compute_backend_bucket.libsonnet'),
  compute_backend_service: (import 'compute_backend_service.libsonnet'),
  compute_default_service_account: (import 'compute_default_service_account.libsonnet'),
  compute_disk: (import 'compute_disk.libsonnet'),
  compute_forwarding_rule: (import 'compute_forwarding_rule.libsonnet'),
  compute_global_address: (import 'compute_global_address.libsonnet'),
  compute_global_forwarding_rule: (import 'compute_global_forwarding_rule.libsonnet'),
  compute_ha_vpn_gateway: (import 'compute_ha_vpn_gateway.libsonnet'),
  compute_health_check: (import 'compute_health_check.libsonnet'),
  compute_image: (import 'compute_image.libsonnet'),
  compute_instance: (import 'compute_instance.libsonnet'),
  compute_instance_group: (import 'compute_instance_group.libsonnet'),
  compute_instance_group_manager: (import 'compute_instance_group_manager.libsonnet'),
  compute_instance_serial_port: (import 'compute_instance_serial_port.libsonnet'),
  compute_instance_template: (import 'compute_instance_template.libsonnet'),
  compute_lb_ip_ranges: (import 'compute_lb_ip_ranges.libsonnet'),
  compute_network: (import 'compute_network.libsonnet'),
  compute_network_endpoint_group: (import 'compute_network_endpoint_group.libsonnet'),
  compute_network_peering: (import 'compute_network_peering.libsonnet'),
  compute_node_types: (import 'compute_node_types.libsonnet'),
  compute_region_instance_group: (import 'compute_region_instance_group.libsonnet'),
  compute_region_instance_template: (import 'compute_region_instance_template.libsonnet'),
  compute_region_network_endpoint_group: (import 'compute_region_network_endpoint_group.libsonnet'),
  compute_region_ssl_certificate: (import 'compute_region_ssl_certificate.libsonnet'),
  compute_regions: (import 'compute_regions.libsonnet'),
  compute_resource_policy: (import 'compute_resource_policy.libsonnet'),
  compute_router: (import 'compute_router.libsonnet'),
  compute_router_nat: (import 'compute_router_nat.libsonnet'),
  compute_router_status: (import 'compute_router_status.libsonnet'),
  compute_snapshot: (import 'compute_snapshot.libsonnet'),
  compute_ssl_certificate: (import 'compute_ssl_certificate.libsonnet'),
  compute_ssl_policy: (import 'compute_ssl_policy.libsonnet'),
  compute_subnetwork: (import 'compute_subnetwork.libsonnet'),
  compute_vpn_gateway: (import 'compute_vpn_gateway.libsonnet'),
  compute_zones: (import 'compute_zones.libsonnet'),
  container_attached_install_manifest: (import 'container_attached_install_manifest.libsonnet'),
  container_attached_versions: (import 'container_attached_versions.libsonnet'),
  container_aws_versions: (import 'container_aws_versions.libsonnet'),
  container_azure_versions: (import 'container_azure_versions.libsonnet'),
  container_cluster: (import 'container_cluster.libsonnet'),
  container_engine_versions: (import 'container_engine_versions.libsonnet'),
  container_registry_image: (import 'container_registry_image.libsonnet'),
  container_registry_repository: (import 'container_registry_repository.libsonnet'),
  dataproc_metastore_service: (import 'dataproc_metastore_service.libsonnet'),
  datastream_static_ips: (import 'datastream_static_ips.libsonnet'),
  dns_keys: (import 'dns_keys.libsonnet'),
  dns_managed_zone: (import 'dns_managed_zone.libsonnet'),
  dns_record_set: (import 'dns_record_set.libsonnet'),
  firebase_android_app: (import 'firebase_android_app.libsonnet'),
  firebase_android_app_config: (import 'firebase_android_app_config.libsonnet'),
  firebase_apple_app: (import 'firebase_apple_app.libsonnet'),
  firebase_apple_app_config: (import 'firebase_apple_app_config.libsonnet'),
  firebase_hosting_channel: (import 'firebase_hosting_channel.libsonnet'),
  firebase_web_app: (import 'firebase_web_app.libsonnet'),
  firebase_web_app_config: (import 'firebase_web_app_config.libsonnet'),
  folder: (import 'folder.libsonnet'),
  folder_organization_policy: (import 'folder_organization_policy.libsonnet'),
  folders: (import 'folders.libsonnet'),
  game_services_game_server_deployment_rollout: (import 'game_services_game_server_deployment_rollout.libsonnet'),
  iam_policy: (import 'iam_policy.libsonnet'),
  iam_role: (import 'iam_role.libsonnet'),
  iam_testable_permissions: (import 'iam_testable_permissions.libsonnet'),
  iam_workload_identity_pool: (import 'iam_workload_identity_pool.libsonnet'),
  iam_workload_identity_pool_provider: (import 'iam_workload_identity_pool_provider.libsonnet'),
  iap_client: (import 'iap_client.libsonnet'),
  kms_crypto_key: (import 'kms_crypto_key.libsonnet'),
  kms_crypto_key_version: (import 'kms_crypto_key_version.libsonnet'),
  kms_key_ring: (import 'kms_key_ring.libsonnet'),
  kms_secret: (import 'kms_secret.libsonnet'),
  kms_secret_asymmetric: (import 'kms_secret_asymmetric.libsonnet'),
  kms_secret_ciphertext: (import 'kms_secret_ciphertext.libsonnet'),
  logging_project_cmek_settings: (import 'logging_project_cmek_settings.libsonnet'),
  logging_sink: (import 'logging_sink.libsonnet'),
  monitoring_app_engine_service: (import 'monitoring_app_engine_service.libsonnet'),
  monitoring_cluster_istio_service: (import 'monitoring_cluster_istio_service.libsonnet'),
  monitoring_istio_canonical_service: (import 'monitoring_istio_canonical_service.libsonnet'),
  monitoring_mesh_istio_service: (import 'monitoring_mesh_istio_service.libsonnet'),
  monitoring_notification_channel: (import 'monitoring_notification_channel.libsonnet'),
  monitoring_uptime_check_ips: (import 'monitoring_uptime_check_ips.libsonnet'),
  netblock_ip_ranges: (import 'netblock_ip_ranges.libsonnet'),
  organization: (import 'organization.libsonnet'),
  privateca_certificate_authority: (import 'privateca_certificate_authority.libsonnet'),
  project: (import 'project.libsonnet'),
  project_organization_policy: (import 'project_organization_policy.libsonnet'),
  project_service: (import 'project_service.libsonnet'),
  projects: (import 'projects.libsonnet'),
  pubsub_subscription: (import 'pubsub_subscription.libsonnet'),
  pubsub_topic: (import 'pubsub_topic.libsonnet'),
  redis_instance: (import 'redis_instance.libsonnet'),
  runtimeconfig_config: (import 'runtimeconfig_config.libsonnet'),
  runtimeconfig_variable: (import 'runtimeconfig_variable.libsonnet'),
  secret_manager_secret: (import 'secret_manager_secret.libsonnet'),
  secret_manager_secret_version: (import 'secret_manager_secret_version.libsonnet'),
  secret_manager_secret_version_access: (import 'secret_manager_secret_version_access.libsonnet'),
  service_account: (import 'service_account.libsonnet'),
  service_account_access_token: (import 'service_account_access_token.libsonnet'),
  service_account_id_token: (import 'service_account_id_token.libsonnet'),
  service_account_jwt: (import 'service_account_jwt.libsonnet'),
  service_account_key: (import 'service_account_key.libsonnet'),
  service_networking_peered_dns_domain: (import 'service_networking_peered_dns_domain.libsonnet'),
  sourcerepo_repository: (import 'sourcerepo_repository.libsonnet'),
  spanner_instance: (import 'spanner_instance.libsonnet'),
  sql_backup_run: (import 'sql_backup_run.libsonnet'),
  sql_ca_certs: (import 'sql_ca_certs.libsonnet'),
  sql_database: (import 'sql_database.libsonnet'),
  sql_database_instance: (import 'sql_database_instance.libsonnet'),
  sql_database_instances: (import 'sql_database_instances.libsonnet'),
  sql_databases: (import 'sql_databases.libsonnet'),
  sql_tiers: (import 'sql_tiers.libsonnet'),
  storage_bucket: (import 'storage_bucket.libsonnet'),
  storage_bucket_object: (import 'storage_bucket_object.libsonnet'),
  storage_bucket_object_content: (import 'storage_bucket_object_content.libsonnet'),
  storage_object_signed_url: (import 'storage_object_signed_url.libsonnet'),
  storage_project_service_account: (import 'storage_project_service_account.libsonnet'),
  storage_transfer_project_service_account: (import 'storage_transfer_project_service_account.libsonnet'),
  tags_tag_key: (import 'tags_tag_key.libsonnet'),
  tags_tag_value: (import 'tags_tag_value.libsonnet'),
  tpu_tensorflow_versions: (import 'tpu_tensorflow_versions.libsonnet'),
  vpc_access_connector: (import 'vpc_access_connector.libsonnet'),
}
