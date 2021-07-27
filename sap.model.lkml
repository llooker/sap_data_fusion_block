connection: "@{CONNECTION}"
include: "/views/*.view.lkml"
include: "/dashboards/*"
include: "/derived_tables/*.view.lkml"

label: "SAP"

# Procure To Pay

explore: accounting {
  label: "Accounts and Materials"
  group_label: "SAP - Procure To Pay"
  join: materials {
    type: left_outer
    sql_on: ${accounting.material_number} = ${materials.material};;
    relationship: many_to_one
  }
}

explore: goods_received {
  label: "Goods and Materials"
  group_label: "SAP - Procure To Pay"
  join: materials {
    type: left_outer
    sql_on: ${goods_received.material} = ${materials.material};;
    relationship: many_to_one
  }
}

explore: purchase_order {
  label: "Purchase, Materials and Suppliers"
  group_label: "SAP - Procure To Pay"
  join: materials {
    type: left_outer
    sql_on: ${purchase_order.purchase_order_item_material_number} = ${materials.material};;
    relationship: many_to_one
  }
  join: suppliers {
    type: left_outer
    sql_on: ${purchase_order.vendors_account_number} = ${suppliers.vendor_account_number};;
    relationship: many_to_one
  }
}

explore: supplier_invoice {
  label: "Suplier_Invoice, Materials and Suppliers"
  group_label: "SAP - Procure To Pay"
  join: materials {
    type: left_outer
    sql_on: ${supplier_invoice.material_number} = ${materials.material};;
    relationship: many_to_one
  }
  join: suppliers {
    type: left_outer
    sql_on: ${supplier_invoice.vendor_account_number} = ${suppliers.vendor_account_number};;
    relationship: many_to_one
  }
}

# Order To Cash

explore: orders {
  label: "Orders, Materials and Customers"
  group_label: "SAP - Order To Cash"
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
  group_label: "SAP - Order To Cash"
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

# Supply Chain Management

#Forecast Fact
explore: forecast_fact {
  label: "Forecast, Materials and Plant"
  group_label: "SAP - Supply Chain Management"
  join: materials {
    type: left_outer
    sql_on: ${forecast_fact.material_number} = ${materials.material} ;;
    sql_where: ${forecast_fact.date_type} = 3 ;; #Filtering for forecast by month
    relationship: one_to_many
  }
  join: plant {
    type: left_outer
    sql_on: ${forecast_fact.plant} = ${plant.plant} ;;
    relationship: one_to_many
  }
}

#Sales Order Delivery Fact
explore: sales_order_delivery_fact {
  label: "Sales Order Deliver, Customer, Materials and Plant"
  group_label: "SAP - Supply Chain Management"
  join: materials {
    type: left_outer
    sql_on: ${sales_order_delivery_fact.material} = ${materials.material} ;;
    relationship: many_to_one
  }
  join: plant {
    type: left_outer
    sql_on: ${sales_order_delivery_fact.plant} = ${plant.plant} ;;
    relationship: many_to_one
  }
  join: customers {
    type: left_outer
    sql_on: ${sales_order_delivery_fact.customer_number} = ${customers.customer_number} ;;
    relationship: many_to_one
  }

  join: OTIF {
    #This join is used to calculate order level fulfillment
    type: left_outer
    sql_on: ${sales_order_delivery_fact.sales_order_number} = ${OTIF.SalesOrderNumber} ;;
    relationship: many_to_one
  }

  join: ldd {
    #This join is for date dimension calculations
    type: cross
    relationship: many_to_one
  }
}
#Forecast to Schedule Join
explore: sales_order_schedule_fact_month {
  label: " Sales Order Schedule, Forecast by Month"
  group_label: "SAP - Supply Chain Management"
  join: forecast_fact_month {
    type: left_outer
    sql_on: ${sales_order_schedule_fact_month.prim_key} = ${forecast_fact_month.prim_key} ;;
    relationship: many_to_one
  }
}

#Material Inventory Fact
explore: material_inventory {
  label: "Inventory and Materials"
  group_label: "SAP - Supply Chain Management"
  join: materials {
    type: left_outer
    sql_on: ${material_inventory.material_number} = ${materials.material};;
    relationship: many_to_one
  }

}
