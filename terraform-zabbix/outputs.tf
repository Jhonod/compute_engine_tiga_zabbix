output "zabbix_server_ip" {
  value = google_compute_instance.zabbix-server.network_interface[0].access_config[0].nat_ip
}
output "zabbix_proxy_ip" {
  value = google_compute_instance.zabbix-proxy.network_interface[0].access_config[0].nat_ip
}
output "zabbix_db_ip" {
  value = google_compute_instance.zabbix-db.network_interface[0].access_config[0].nat_ip
}
