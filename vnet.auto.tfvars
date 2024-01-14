vnet_name     = "my-vnet"
address_space = ["10.0.0.0/16"]
# subnet_names = ["frontend", "backend"]
# subnet_prefixes = ["10.0.0.0/20", "10.0.128.0/18"]
subnets = {
  "default"  = "10.0.0.0/20",
  "frontend" = "10.0.128.0/18",
  "backend"  = "10.0.192.0/18"
}
tags = {
  bu  = "itops",
  env = "production"
}