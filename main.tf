variable "namecheap_username" {}
variable "namecheap_api_key" {}

provider "namecheap" {
  user_name = var.namecheap_username
  api_user  = var.namecheap_username
  api_key   = var.namecheap_api_key
}

resource "namecheap_domain_records" "records" {
  domain     = "atamayo.io"
  mode       = "OVERWRITE"
  email_type = "MX"

  record {
    hostname = "@"
    type     = "A"
    address  = "216.239.32.21"
  }

  record {
    hostname = "@"
    type     = "A"
    address  = "216.239.34.21"
  }

  record {
    hostname = "@"
    type     = "A"
    address  = "216.239.36.21"
  }

  record {
    hostname = "@"
    type     = "A"
    address  = "216.239.38.21"
  }

  record {
    hostname = "@"
    type     = "AAAA"
    address  = "2001:4860:4802:32::15"
  }

  record {
    hostname = "@"
    type     = "AAAA"
    address  = "2001:4860:4802:34::15"
  }

  record {
    hostname = "@"
    type     = "AAAA"
    address  = "2001:4860:4802:36::15"
  }

  record {
    hostname = "@"
    type     = "AAAA"
    address  = "2001:4860:4802:38::15"
  }

  record {
    hostname = "@"
    type     = "MX"
    address  = "mx.zoho.com"
  }

  record {
    hostname = "@"
    type     = "MX"
    address  = "mx2.zoho.com"
  }

  record {
    hostname = "@"
    type     = "MX"
    address  = "mx3.zoho.com"
  }

  # This tells google that we own this domain
  record {
    hostname = "@"
    type     = "TXT"
    address  = "v=spf1 a mx ip4:172.104.76.128 ip6:2400:8902::f03c:91ff:febc:8546 mx:atamayo.io include:mailgun.org include:zoho.com include:atamayo.io ~all google-site-verification=1wf8zBYrC3XirzZmMl3TtzoKo6CuuupN-1i_9liD0Uk"
  }

  record {
    hostname = "@"
    type     = "TXT"
    address  = "google-site-verification=1wf8zBYrC3XirzZmMl3TtzoKo6CuuupN-1i_9liD0Uk"
  }

  record {
    hostname = "api.dfa"
    type     = "CNAME"
    address  = "ghs.googlehosted.com."
  }

  record {
    hostname = "cors-anywhere"
    type     = "CNAME"
    address  = "ghs.googlehosted.com."
  }

  record {
    hostname = "dfa"
    type     = "CNAME"
    address  = "ghs.googlehosted.com."
  }

  record {
    hostname = "hades-website"
    type     = "CNAME"
    address  = "c.storage.googleapis.com."
  }

  record {
    hostname = "monies"
    type     = "CNAME"
    address  = "ghs.googlehosted.com."
  }

  record {
    hostname = "pain"
    type     = "CNAME"
    address  = "ghs.googlehosted.com."
  }

  record {
    hostname = "time-tracker"
    type     = "CNAME"
    address  = "ghs.googlehosted.com."
  }

  record {
    hostname = "www"
    type     = "CNAME"
    address  = "ghs.googlehosted.com."
  }
}
