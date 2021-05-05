view: orders {
  drill_fields: [rejection_reason,delivery_status,distribution_channel,customers.customer_number,count, materials.material,total_quantity,total_net_price,total_net_value]
  sql_table_name: `sap-adapter.sap_cdf_facts.sales_orders_fact`;;

  dimension: billing_block {
    type: string
    sql: ${TABLE}.BillingBlock ;;
  }

  dimension: company_code_to_be_billed {
    type: string
    sql: ${TABLE}.CompanyCodeToBeBilled ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CreatedOn ;;
  }

  dimension: cumulative_confirmed_quantity {
    type: number
    sql: ${TABLE}.CumulativeConfirmedQuantity ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: delivery_status {
    type: string
    sql: ${TABLE}.DeliveryStatus ;;
  }

  dimension: distribution_channel {
    type: string
    sql: ${TABLE}.DistributionChannel ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }

  dimension: document_cateogory {
    type: string
    sql: ${TABLE}.DocumentCateogory ;;
  }

  dimension_group: document {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DocumentDate ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.Material ;;
  }

  dimension: material_group {
    type: string
    sql: ${TABLE}.MaterialGroup ;;
    drill_fields: [material]
  }

  dimension: net_price {
    type: number
    sql: ${TABLE}.NetPrice ;;
  }

  dimension: net_value {
    type: number
    sql: ${TABLE}.NetValue ;;
  }

  dimension: order_quantity {
    type: number
    sql: ${TABLE}.OrderQuantity ;;
  }

  dimension: order_reason {
    type: string
    sql: ${TABLE}.OrderReason ;;
  }

  dimension: over_all_billing_block_status {
    type: string
    sql: ${TABLE}.OverAllBillingBlockStatus ;;
  }

  dimension: overall_status {
    type: string
    sql: ${TABLE}.OverallStatus ;;
  }

  dimension: plant {
    type: string
    sql: ${TABLE}.Plant ;;
  }

  dimension: rejection_reason {
    type: string
    sql: ${TABLE}.RejectionReason ;;
  }

  dimension: rejection_status {
    type: string
    sql: ${TABLE}.RejectionStatus ;;
  }

  dimension_group: requested_delivery {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.RequestedDeliveryDate ;;
  }

  dimension: sales_document_item {
    type: string
    sql: ${TABLE}.SalesDocumentItem ;;
  }

  dimension: sales_office {
    type: string
    sql: ${TABLE}.SalesOffice ;;
  }

  dimension: sales_order_number {
    type: string
    sql: ${TABLE}.SalesOrderNumber ;;
  }

  dimension: sales_order_type {
    type: string
    sql: ${TABLE}.SalesOrderType ;;
  }

  dimension: sales_org {
    type: string
    sql: ${TABLE}.SalesOrg ;;
  }

  dimension: shipping_condition {
    type: string
    sql: ${TABLE}.ShippingCondition ;;
  }

  dimension: sold_to_party {
    type: string
    sql: ${TABLE}.SoldToParty ;;
  }

  dimension: target_quantity {
    type: number
    sql: ${TABLE}.TargetQuantity ;;
  }

  dimension: target_quantity_unitof_measure {
    type: string
    sql: ${TABLE}.TargetQuantityUnitofMeasure ;;
  }

  dimension: customer_number {
    type: string
    sql: ${TABLE}.CustomerNumber ;;
  }

  # dimension_group: time {
  #   type: time
  #   timeframes: [
  #     raw,
  #     time,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   sql: ${TABLE}.Time ;;
  # }

  measure: count {
    label: "Number of Orders"
    type: count
    drill_fields: []
  }

  measure: average_quantity {
    value_format_name: decimal_1
    type: average
    sql: ${order_quantity} ;;
  }

  measure: total_quantity {
    type: sum
    sql: ${order_quantity} ;;
  }

  measure: total_net_price {
    value_format_name: usd
    type: sum
    sql: ${net_price} ;;
  }

  measure: average_net_price {
    value_format_name: usd
    type: average
    sql: ${net_price} ;;
  }

  measure: average_net_value {
    value_format_name: usd
    type: average
    sql: ${net_value} ;;
  }

  measure: total_net_value {
    value_format_name: usd
    type: sum
    sql: ${net_value} ;;
  }

  measure: count_rejected {
    type: count
    filters: [rejection_status: "C"]
  }

  measure: percent_rejected {
    type: number
    value_format_name: percent_1
    sql: ${count_rejected}/nullif(${count},0) ;;
  }
}
