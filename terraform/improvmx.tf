data "improvmx_domain_check" "hiderland_com" {
  domain = "hiderland.com"
}

resource "improvmx_email_forward" "sandy" {
  domain            = "hiderland.com"
  alias_name        = "sandy"
  destination_email = "hiderrt1@yahoo.com"
}


