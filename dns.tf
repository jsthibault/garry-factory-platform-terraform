# DNS Records for wedding-tools.fr
resource "gandi_livedns_record" "wedding_tools_plan_table" {
  zone   = "wedding-tools.fr"
  name   = "plan-table"
  type   = "CNAME"
  ttl    = 10800
  values = ["jsthibault.github.io."]
}

# DNS Records for garry-factory.fr
resource "gandi_livedns_record" "garry_factory_invoicetracker" {
  zone   = "garry-factory.fr"
  name   = "invoicetracker"
  type   = "A"
  ttl    = 10800
  values = [hcloud_server.garry_factory_1.ipv4_address]
}

resource "gandi_livedns_record" "garry_factory_invoicetracker_api" {
  zone   = "garry-factory.fr"
  name   = "invoicetracker.api"
  type   = "A"
  ttl    = 10800
  values = [hcloud_server.garry_factory_1.ipv4_address]
}

resource "gandi_livedns_record" "garry_factory_home" {
  zone   = "home.fr"
  name   = "invoicetracker"
  type   = "A"
  ttl    = 10800
  values = [hcloud_server.garry_factory_1.ipv4_address]
}

resource "gandi_livedns_record" "garry_factory_home_api" {
  zone   = "home.api.fr"
  name   = "invoicetracker.api"
  type   = "A"
  ttl    = 10800
  values = [hcloud_server.garry_factory_1.ipv4_address]
}
