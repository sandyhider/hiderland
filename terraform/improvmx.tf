provider "http" {}

resource "http_request" "create_forwarding" {
  url    = "https://api.improvmx.com/v3/domains/yourdomain.com/aliases"
  method = "POST"

  request_headers = {
    "Authorization" = "Basic ${base64encode("api:<YOUR_IMPROVMX_API_KEY>")}"
    "Content-Type"  = "application/json"
  }

  request_body = jsonencode({
    alias  = "contact"
    forward = ["your-email@example.com"]
  })
}

