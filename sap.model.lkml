connection: "sap-adapter"
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard


explore: orders {
  join: materials {
    type: left_outer
    sql_on: ${materials.material} = ${orders.material} ;;
    relationship: many_to_one
  }
  join: customers {
    relationship: many_to_one
    type: left_outer
    sql_on: ${customers.customer_number} = ${orders.customer_number} ;;
  }
}


explore: revenue {
 join: materials {
  type: left_outer
  sql_on: ${materials.material} = ${revenue.material} ;;
  relationship: many_to_one
}
join: customers {
  type: left_outer
  sql_on: ${customers.customer_number} = ${revenue.customer} ;;
  relationship: many_to_one
}
}
