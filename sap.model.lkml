connection: "@{CONNECTION}"
include: "/views/*.view.lkml"
label: "SAP"


explore: orders {
  label: "Orders, Materials and Customers"
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
  label: "Revenue, Materials and Customers"
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
