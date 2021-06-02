connection: "@{CONNECTION}"
include: "/views/*.view.lkml"
include: "/dashboards/*"
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


# P2P

explore: accounting {
  label: "Accounts and Materials"
  join: materials {
    type: left_outer
    sql_on: ${accounting.material_number} = ${materials.material};;
    relationship: many_to_one
  }
}

explore: goods_received {
  label: "Goods and Materials"
  join: materials {
    type: left_outer
    sql_on: ${goods_received.material} = ${materials.material};;
    relationship: many_to_one
  }
}

explore: material_inventory {
  label: "Inventory and Materials"
  join: materials {
    type: left_outer
    sql_on: ${material_inventory.material_number} = ${materials.material};;
    relationship: many_to_one
  }
}

explore: purchase_order {
  label: "Purchase, Materials and Suppliers"
  join: materials {
    type: left_outer
    sql_on: ${purchase_order.purchase_order_item_material_number} = ${materials.material};;
    relationship: many_to_one
  }
  join: supplier {
    type: left_outer
    sql_on: ${purchase_order.vendors_account_number} = ${supplier.vendor_account_number};;
    relationship: many_to_one
  }
}

explore: supplier_invoice {
  label: "Suuplier_Invoice, Materials and Suppliers"
  join: materials {
    type: left_outer
    sql_on: ${supplier_invoice.material_number} = ${materials.material};;
    relationship: many_to_one
  }
  join: supplier {
    type: left_outer
    sql_on: ${supplier_invoice.vendor_account_number} = ${supplier.vendor_account_number};;
    relationship: many_to_one
  }
}
