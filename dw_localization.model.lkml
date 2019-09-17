
# For profservices: connection: "snowlooker"
connection: "thelook_snowflake"

# include all the views
include: "*.view"
include: "localization_testing.dashboard"
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
