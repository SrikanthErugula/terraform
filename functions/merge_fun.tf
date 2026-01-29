# MERGE FUNCTIOS EXAMPLES

# More ex : https://developer.hashicorp.com/terraform/language/functions/merge

# > merge({a="b"}, {a=[1,2], c="z"}, {d=3})

#output is below

# EX: 1

# {
#   "a" = [
#     1,
#     2,
#   ]
#   "c" = "z"
#   "d" = 3
# }

# EX : 2

locals {
  map1 = {
    a = "apple"
    b = "banana"
  }
  map2 = {
    b = "blueberry"
    c = "cherry"
  }
  merged_map = merge(local.map1, local.map2)
}

output "merged_map_result" {
  // Result: { a = "apple", b = "blueberry", c = "cherry" }
  value = local.merged_map
}
