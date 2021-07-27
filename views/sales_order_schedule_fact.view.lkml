view: sales_order_schedule_fact {
  sql_table_name: `@{PROJECT}.@{FACT_DATASET}.sales_order_schedule_fact`
    ;;

  dimension: batch_number {
    type: string
    sql: ${TABLE}.BatchNumber ;;
  }

  dimension: bill_status_order_related {
    type: string
    sql: ${TABLE}.BillStatusOrderRelated ;;
  }

  dimension: billing_block {
    type: string
    sql: ${TABLE}.BillingBlock ;;
  }

  dimension: complete_delivery {
    type: string
    sql: ${TABLE}.CompleteDelivery ;;
  }

  dimension: confirmed {
    type: string
    sql: ${TABLE}.Confirmed ;;
  }

  dimension: confirmed_quantity {
    type: number
    sql: ${TABLE}.ConfirmedQuantity ;;
  }

  dimension: controlling_area {
    type: string
    sql: ${TABLE}.ControllingArea ;;
  }

  dimension: cost_center {
    type: string
    sql: ${TABLE}.CostCenter ;;
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

  dimension: credit_control_area {
    type: string
    sql: ${TABLE}.CreditControlArea ;;
  }

  dimension: cumulative_confirmed_quantity {
    type: number
    sql: ${TABLE}.CumulativeConfirmedQuantity ;;
  }

  dimension: cumulative_confirmed_quantity_in_sales_unit {
    type: number
    sql: ${TABLE}.CumulativeConfirmedQuantityInSalesUnit ;;
  }

  dimension: cumulative_order_quantity_in_sales_unit {
    type: number
    sql: ${TABLE}.CumulativeOrderQuantityInSalesUnit ;;
  }

  dimension: customer_group1 {
    type: string
    sql: ${TABLE}.CustomerGroup1 ;;
  }

  dimension: customer_group2 {
    type: string
    sql: ${TABLE}.CustomerGroup2 ;;
  }

  dimension: customer_group3 {
    type: string
    sql: ${TABLE}.CustomerGroup3 ;;
  }

  dimension: customer_group4 {
    type: string
    sql: ${TABLE}.CustomerGroup4 ;;
  }

  dimension: customer_group5 {
    type: string
    sql: ${TABLE}.CustomerGroup5 ;;
  }

  dimension: customer_number {
    type: string
    sql: ${TABLE}.CustomerNumber ;;
  }

  dimension: delivery_block {
    type: string
    sql: ${TABLE}.DeliveryBlock ;;
  }

  dimension: delivery_priority {
    type: string
    sql: ${TABLE}.DeliveryPriority ;;
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

  dimension: document_category {
    type: string
    sql: ${TABLE}.DocumentCategory ;;
  }

  dimension: document_currency {
    type: string
    sql: ${TABLE}.DocumentCurrency ;;
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

  dimension_group: goods_issue {
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
    sql: ${TABLE}.GoodsIssueDate ;;
  }

  dimension: header_data {
    type: string
    sql: ${TABLE}.HeaderData ;;
  }

  dimension: indicator {
    type: string
    sql: ${TABLE}.Indicator ;;
  }

  dimension: item_data {
    type: string
    sql: ${TABLE}.ItemData ;;
  }

  dimension: item_relevant_for_delivery {
    type: string
    sql: ${TABLE}.ItemRelevantForDelivery ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.Material ;;
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

  dimension: overall_delivery_block_status {
    type: string
    sql: ${TABLE}.OverallDeliveryBlockStatus ;;
  }

  dimension: overall_delivery_status {
    type: string
    sql: ${TABLE}.OverallDeliveryStatus ;;
  }

  dimension: overall_status_header {
    type: string
    sql: ${TABLE}.OverallStatusHeader ;;
  }

  dimension: overall_status_item {
    type: string
    sql: ${TABLE}.OverallStatusItem ;;
  }

  dimension: plant {
    type: string
    sql: ${TABLE}.Plant ;;
  }

  dimension: preceding_document_category {
    type: string
    sql: ${TABLE}.PrecedingDocumentCategory ;;
  }

  dimension: product_hierarchy {
    type: string
    sql: ${TABLE}.ProductHierarchy ;;
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

  dimension: route {
    type: string
    sql: ${TABLE}.Route ;;
  }

  dimension: sales_document_item {
    type: string
    sql: ${TABLE}.SalesDocumentItem ;;
  }

  dimension: sales_document_item_category {
    type: string
    sql: ${TABLE}.SalesDocumentItemCategory ;;
  }

  dimension: sales_group {
    type: string
    sql: ${TABLE}.SalesGroup ;;
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

  dimension: sales_unit {
    type: string
    sql: ${TABLE}.SalesUnit ;;
  }

  dimension_group: schedule_line {
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
    sql: ${TABLE}.ScheduleLineDate ;;
  }

  dimension: schedule_line_delivery_block {
    type: string
    sql: ${TABLE}.ScheduleLineDeliveryBlock ;;
  }

  dimension: schedule_line_number {
    type: string
    sql: ${TABLE}.ScheduleLineNumber ;;
  }

  dimension: scheduled_line_category {
    type: string
    sql: ${TABLE}.ScheduledLineCategory ;;
  }

  dimension: shipping_condition {
    type: string
    sql: ${TABLE}.ShippingCondition ;;
  }

  dimension: shipping_point {
    type: string
    sql: ${TABLE}.ShippingPoint ;;
  }

  #New measures and dimensions

  measure: order_quantity_sum {
    type: sum
    drill_fields: []
    sql: ${order_quantity} ;;
  }

  measure: forecast_quantity_sum {
    type: sum
    drill_fields: []
    sql: ${forecast_fact.planned_quantity} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: APE {
    type: number
    drill_fields: []
    value_format:"#.00%;(#.00%)"
    sql: CASE WHEN ${order_quantity_sum} <= 0 THEN --A <=0
            CASE WHEN ${forecast_quantity_sum} = 0 THEN 0 ELSE 1 END -- IF(F=0,0,1)
            ELSE ABS((${forecast_quantity_sum}-${order_quantity_sum})/${order_quantity_sum})
         END   ;;
  }


}
