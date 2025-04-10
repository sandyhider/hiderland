# data "improvmx_domain_check" "hiderland_com" {
#   domain = "hiderland.com"
# }

resource "improvmx_domain" "hiderland" {
  domain = "hiderland.com"
}

# import {
#   to = improvmx_domain.hiderland
#   id = "hiderland.com"
# }

resource "improvmx_email_forward" "sandy" {
  domain            = "hiderland.com"
  alias_name        = "sandy"
  destination_email = "hiderrt1@yahoo.com"
  depends_on = [improvmx_domain.hiderland]
}

# import {
#   to = improvmx_email_forward.sandy
#   id = "hiderland.com_sandy"
# }
