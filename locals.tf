
locals {
  name = "samtest1"
  location = "centralus"
  tier = "dev"
  common_tags = {
      created_by = "Sameera.Punchihewa"
      tier = local.tier
  }
}