connection: "snowlooker"

# include all the views
include: "*.view"
label: "First Model"

#explore: order_items {
#  join: users {
#    type: left_outer
#    sql_on: ${order_items.user_id} = ${users.id} ;;
#    relationship: many_to_one
#  }
#
#
#}

explore: users {
  label: "Users"
  group_label: "DW Localization"
}
