connection: "sap-adapter"
# include: "/**/*.view.lkml"                 # include all views in this project
include: "/Procure_to_Pay/P2P_Views/*.view.lkml" # include all views in P2P
label: "Procure to Pay"

explore: accounting_fact {
  label: "Accounts and Materials"
  join: material_dimension {
    type: left_outer
    sql_on: ${accounting_fact.material_number} = ${material_dimension.material};;
    relationship: many_to_one
  }
}

explore: goods_received_fact {
  label: "Goods and Materials"
  join: material_dimension {
    type: left_outer
    sql_on: ${goods_received_fact.material} = ${material_dimension.material};;
    relationship: many_to_one
  }
}

explore: material_inventory_fact {
  label: "Inventory and Materials"
  join: material_dimension {
    type: left_outer
    sql_on: ${material_inventory_fact.material_number} = ${material_dimension.material};;
    relationship: many_to_one
  }
}

explore: purchase_order_fact {
  label: "Purchase, Materials and Suppliers"
  join: material_dimension {
    type: left_outer
    sql_on: ${purchase_order_fact.purchase_order_item_material_number} = ${material_dimension.material};;
    relationship: many_to_one
  }
  join: supplier_dimension {
    type: left_outer
    sql_on: ${purchase_order_fact.vendors_account_number} = ${supplier_dimension.vendor_account_number};;
    relationship: many_to_one
  }
}

explore: supplier_invoice_fact {
  label: "Suuplier_Invoice, Materials and Suppliers"
  join: material_dimension {
    type: left_outer
    sql_on: ${supplier_invoice_fact.material_number} = ${material_dimension.material};;
    relationship: many_to_one
  }
  join: supplier_dimension {
    type: left_outer
    sql_on: ${supplier_invoice_fact.vendor_account_number} = ${supplier_dimension.vendor_account_number};;
    relationship: many_to_one
  }
}
