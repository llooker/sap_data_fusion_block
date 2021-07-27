view: sales_order_delivery_fact {
  sql_table_name: `@{PROJECT}.@{FACT_DATASET}.sales_order_delivery_fact`
    ;;

  dimension_group: active_goods_movement {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ActiveGoodsMovementDate ;;
  }

  dimension: batch {
    type: string
    sql: ${TABLE}.Batch ;;
  }

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

  dimension: delivery {
    type: string
    sql: ${TABLE}.Delivery ;;
  }

  dimension: delivery_block {
    type: string
    sql: ${TABLE}.DeliveryBlock ;;
  }

  dimension: delivery_item {
    type: string
    sql: ${TABLE}.DeliveryItem ;;
  }

  dimension: delivery_priority {
    type: string
    sql: ${TABLE}.DeliveryPriority ;;
  }

  dimension: delivery_quantity {
    type: number
    sql: ${TABLE}.DeliveryQuantity ;;
  }

  dimension: delivery_status {
    type: string
    sql: ${TABLE}.DeliveryStatus ;;
  }

  dimension: delivery_type {
    type: string
    sql: ${TABLE}.DeliveryType ;;
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

  dimension: order_reason {
    type: string
    sql: ${TABLE}.OrderReason ;;
  }

  dimension: orginating_item {
    type: string
    sql: ${TABLE}.OrginatingItem ;;
  }

  dimension: originating_document {
    type: string
    sql: ${TABLE}.OriginatingDocument ;;
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

  dimension: partial_delivery_item_level {
    type: string
    sql: ${TABLE}.PartialDeliveryItemLevel ;;
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

  dimension_group: proof_of_delivery {
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
    sql: ${TABLE}.ProofOfDeliveryDate ;;
  }

  dimension: reference_item {
    type: string
    sql: ${TABLE}.ReferenceItem ;;
  }

  dimension: refernce_document {
    type: string
    sql: ${TABLE}.RefernceDocument ;;
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

  dimension: sales_district {
    type: string
    sql: ${TABLE}.SalesDistrict ;;
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

  dimension: sales_organization {
    type: string
    sql: ${TABLE}.SalesOrganization ;;
  }

  dimension: shipping_condition {
    type: string
    sql: ${TABLE}.ShippingCondition ;;
  }

  dimension: shipping_point {
    type: string
    sql: ${TABLE}.ShippingPoint ;;
  }

  dimension: shipping_point_receiving_point {
    type: string
    sql: ${TABLE}.ShippingPointReceivingPoint ;;
  }

  dimension: storage_location {
    type: string
    sql: ${TABLE}.StorageLocation ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  #New Measure and Flags

  #New dimensions

  dimension: delivery_status_flag  {
    description: "Status flag for early delivery, on-time delivery, or late delivery."
    type: string
    sql: CASE WHEN ${active_goods_movement_date}< ${requested_delivery_date} THEN 'E' --Early delivery
              WHEN ${active_goods_movement_date}= ${requested_delivery_date} THEN 'O' --On time delivery
              WHEN ${active_goods_movement_date}> ${requested_delivery_date} THEN 'L' --Late delivery
              ELSE 'P' --Pending delivery date
         END ;;
  }

  dimension: order_status_flag  {
    description: "Status flag for delivery quantity.."
    type: string
    sql: CASE WHEN ${delivery_quantity} = ${cumulative_order_quantity_in_sales_unit} THEN 'CF' --Correctly filled
              WHEN ${delivery_quantity} > ${cumulative_order_quantity_in_sales_unit}  THEN 'OF' --Over filled
              WHEN ${delivery_quantity} < ${cumulative_order_quantity_in_sales_unit} THEN 'UF' --Under filled
              ELSE 'P' --Pending delivery
         END ;;
  }

  dimension: line_filled_flag  {
    type: number
    sql: CASE WHEN ${delivery_quantity} = ${cumulative_order_quantity_in_sales_unit} AND ${active_goods_movement_date}= ${requested_delivery_date}  THEN 0 ELSE 1 END ;;
  }

  #Date dimensions

  dimension: current_year_extract   {
    type: string
    sql: CASE WHEN DATE_DIFF(${ldd.latest_delivery_date},${active_goods_movement_date}, year) = 0 THEN 'Y' ELSE 'N' END ;;
  }

  dimension: current_month_extract    {
    type: string
    sql: CASE WHEN DATE_DIFF(${ldd.latest_delivery_date},${active_goods_movement_date}, month) = 0 THEN 'Y' ELSE 'N' END ;;
  }

  dimension: current_quarter_extract    {
    type: string
    sql: CASE WHEN DATE_DIFF(${ldd.latest_delivery_date},${active_goods_movement_date}, quarter) = 0 THEN 'Y' ELSE 'N' END ;;
  }

  dimension: last_year_extract    {
    type: string
    sql: CASE WHEN DATE_DIFF(${ldd.latest_delivery_date},${active_goods_movement_date}, year) = 1 THEN 'Y' ELSE 'N' END ;;
  }

  dimension: last_month_extract    {
    type: string
    sql: CASE WHEN DATE_DIFF(${ldd.latest_delivery_date},${active_goods_movement_date}, month) = 1 THEN 'Y' ELSE 'N' END ;;
  }

  dimension: last_quarter_extract    {
    type: string
    sql: CASE WHEN DATE_DIFF(${ldd.latest_delivery_date},${active_goods_movement_date}, quarter) = 1 THEN 'Y' ELSE 'N' END ;;
  }

  dimension: current_month   {
    type: string
    sql: CASE WHEN  ${current_year_extract} = 'Y' THEN 'Y' END ;;
  }

  dimension: last_month   {
    type: string
    sql: CASE WHEN ${last_year_extract} = 'Y' THEN 'Y' END ;;
  }

  #Hidden measures

  measure: total_orders{
    type: count_distinct
    hidden: yes
    drill_fields: []
    sql: ${sales_order_number};;
  }

  measure: OTIF_orders{
    type: count_distinct
    hidden: yes
    drill_fields: []
    sql: CASE WHEN ${OTIF.OTIF} = 'Y' THEN ${sales_order_number} END;;
  }

  measure: line_fill_rate_num{
    type: count_distinct
    hidden: yes
    drill_fields: []
    sql: CASE WHEN ${line_filled_flag}=0 THEN ${delivery_item} END;;
  }


  measure: line_fill_rate_dem{
    type: count_distinct
    hidden: yes
    drill_fields: []
    sql: ${delivery_item};;
  }

  #New meaures

  measure: delivered_quantity{
    type: sum
    drill_fields: []
    sql: ${delivery_quantity} ;;
  }

  measure: required_quantity{
    type: sum
    drill_fields: []
    sql: ${cumulative_order_quantity_in_sales_unit} ;;
  }

  measure: quantity_fill_rate{
    type: number
    value_format: "#.00%"
    drill_fields: []
    sql: CASE WHEN ${required_quantity} = 0 OR ${required_quantity} IS NULL THEN 0 ELSE
          ${delivered_quantity}/${required_quantity}
          END;;
  }

  measure: line_fill_rate{
    type: number
    value_format: "#.00%"
    drill_fields: []
    sql: CASE WHEN ${line_fill_rate_dem} = 0 OR ${line_fill_rate_dem} IS NULL THEN 0 ELSE ${line_fill_rate_num}/${line_fill_rate_dem} END;;
  }

  measure: order_fill_rate{
    type: number
    value_format: "#.00%"
    drill_fields: []
    sql: ${OTIF_orders}/${total_orders};;
  }

  measure: total_value{
    type: sum
    description: "Total value in USD"
    value_format_name: usd
    drill_fields: []
    sql: ${net_value};;
  }

#
  measure: current_total_value{
    type: sum
    description: "Current year total value"
    value_format_name: usd
    filters: [current_month: "Y"]
    sql: ${net_value};;
  }

  measure: last_total_value{
    type: sum
    description: "Last year total value"
    value_format_name: usd
    filters: [last_month: "Y"]
    sql: ${net_value};;
  }

  measure: value_diff{
    type: number
    value_format_name: percent_1
    sql: (${current_total_value}-${last_total_value})/${last_total_value} ;;
  }



}
