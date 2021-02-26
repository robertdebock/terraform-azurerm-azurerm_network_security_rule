variable "name" {
  description = "The name of the security rule. This needs to be unique across all Rules in the Network Security Group. Changing this forces a new resource to be created."
  type        = string
}

variable "description" {
  description = "A description for this rule. Restricted to 140 characters."
  type        = string
  default     = "Network Security Rule"
}

variable "priority" {
  description = "Specifies the priority of the rule. The value can be between '100' and '4096'. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule."
  type        = number
  default     = 1024
}

variable "direction" {
  description = "The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are 'Inbound' and 'Outbound'."
  type        = string
  default     = "Inbound"
}

variable "access" {
  description = "Specifies whether network traffic is allowed or denied. Possible values are 'Allow' and 'Deny'."
  type        = string
  default     = "Allow"
}

variable "protocol" {
  description = "Network protocol this rule applies to. Possible values include 'Tcp', 'Udp', 'Icmp', or '*' (which matches all)."
  type        = string
  default     = "*"
}

variable "source_port_range" {
  description = "Source Port or Range. Integer or range between '0' and '65535' or '*' to match any. This is required if 'source_port_ranges' is not specified."
  type        = string
  default     = "*"
}

variable "destination_port_range" {
  description = "Destination Port or Range. Integer or range between '0' and '65535' or '*' to match any. This is required if destination_port_ranges is not specified."
  type        = string
  default     = "*"
}

variable "source_address_prefix" {
  description = "CIDR or source IP range or '*' to match any IP. Tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. This is required if source_address_prefixes is not specified."
  type        = string
  default     = "*"
}

variable "destination_address_prefix" {
  description = "CIDR or destination IP range or '*' to match any IP. Tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. Besides, it also supports all available Service Tags like 'Sql.WestEurope', 'Storage.EastUS', etc. You can list the available service tags with the cli: `shell az network list-service-tags --location westcentralus`. For further information please see Azure CLI - `az network list-service-tags`. This is required if destination_address_prefixes is not specified."
  type        = string
  default     = "*"
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Network Security Rule. Changing this forces a new resource to be created."
  type        = string
}

variable "network_security_group_name" {
  description = "The name of the Network Security Group that we want to attach the rule to. Changing this forces a new resource to be created."
  type        = string
}
