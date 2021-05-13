view: orders {
  drill_fields: [rejection_reason,delivery_status,distribution_channel,customers.customer_number,count, materials.material,total_quantity,total_net_price,total_net_value]
  sql_table_name: `@{PROJECT}.@{FACT_DATASET}.sales_orders_fact`;;

  dimension: billing_block {
    type: string
    description: "Indicates if the entire Sales Document is blocked for billing"
    sql: ${TABLE}.BillingBlock ;;
  }

  dimension: company_code_to_be_billed {
    type: string
    description: "Balance sheets and profit and loss statements, required by law, are created at company code level"
    sql: ${TABLE}.CompanyCodeToBeBilled ;;
  }

  dimension_group: created {
    type: time
    description: "Date on which the record was created"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      month_name,
      time,
      hour_of_day
    ]
    convert_tz: no
    datatype: timestamp
    sql: TIMESTAMP(CONCAT(${TABLE}.CreatedOn,' ',${TABLE}.Time)) ;;
  }

  dimension: cumulative_confirmed_quantity {
    type: number
    description: "Cumulative Confirmed Quantity in Sales Unit"
    sql: ${TABLE}.CumulativeConfirmedQuantity ;;
  }

  dimension: currency {
    type: string
    description: "The currency that applies to the document (for example, to a sales order or an invoice)"
    sql: ${TABLE}.Currency ;;
  }

  dimension: customer_number {
    hidden: yes
    type: string
    description: "Alphanumeric Key, which identifies the customer system"
    sql: ${TABLE}.CustomerNumber ;;
  }

  dimension: delivery_status {
    type: string
    description: "The delivery status of the Sales Document"
    sql: ${TABLE}.DeliveryStatus ;;
  }

  dimension: distribution_channel {
    type: string
    description: "Wholesale, retail or direct sales"
    sql: ${TABLE}.DistributionChannel ;;
  }

  dimension: division {
    type: string
    description: "A way of grouping materials, products or services. The system uses divisions to determine the Sales Areas and the Business Areas for a material, product or service"
    sql: ${TABLE}.Division ;;
  }

  dimension: document_category {
    type: string
    description: "A classification for the different types of documents that you can process, for example, quotations, sales orders, deliveries, and invoices"
    sql: ${TABLE}.DocumentCategory ;;
  }

  dimension_group: document {
    type: time
    description: "The date on which you want the Sales Document to become effective for Sales Management purposes"
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
    hidden: yes
    type: string
    description: "Alphanumeric key uniquely identifying the material"
    sql: ${TABLE}.Material ;;
  }

  dimension: material_group {
    hidden: yes
    type: string
    description: "Key that you use to group together several materials or services with the same attributes, and to assign them to a particular material group"
    sql: ${TABLE}.MaterialGroup ;;
  }

  dimension: net_price {
    type: number
    description: "The Net Price that results from the Net Value divided by the order quantity"
    sql: ${TABLE}.NetPrice ;;
  }

  dimension: net_value {
    type: number
    description: "The net value of the item, after any discounts and surcharges are taken into account. Sales taxes are not included. The value is expressed in the document currency"
    sql: ${TABLE}.NetValue ;;
  }

  dimension: order_quantity {
    type: number
    description: "OrderQuantity"
    sql: ${TABLE}.OrderQuantity ;;
  }

  dimension: order_reason {
    type: string
    description: "Indicates the reason for creating the Sales Document"
    sql: ${TABLE}.OrderReason ;;
  }

  dimension: over_all_billing_block_status {
    type: string
    description: "The value of the overall billing block field"
    sql: ${TABLE}.OverAllBillingBlockStatus ;;
  }

  dimension: overall_status {
    type: string
    description: "The processing status of the entire Sales Document"
    sql: ${TABLE}.OverallStatus ;;
  }

  dimension: plant {
    type: string
    description: "Key that uniquely identifies a Plant"
    sql: ${TABLE}.Plant ;;
  }

  dimension: rejection_reason {
    group_label: "Rejection"
    type: string
    description: "The reason for rejecting a sales document (for example, a sales quotation or a sales order)"
    sql: ${TABLE}.RejectionReason ;;
  }

  dimension: rejection_status {
    group_label: "Rejection"
    type: string
    description: "Displays the rejection status of the entire sales document"
    sql: ${TABLE}.RejectionStatus ;;
  }

  dimension_group: requested_delivery {
    type: time
    description: "The date that the system automatically suggests as the delivery date for schedule lines when you create further items in the sales document"
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
    description: "The number that uniquely identifies the item in the sales document"
    sql: ${TABLE}.SalesDocumentItem ;;
  }

  dimension: sales_office {
    type: string
    description: "A physical location that has responsibility for the sale of certain products or services within a given geographical area"
    sql: ${TABLE}.SalesOffice ;;
  }

  dimension: sales_order_number {
    type: string
    description: "The number that uniquely identifies the  sales document"
    sql: ${TABLE}.SalesOrderNumber ;;
  }

  dimension: sales_order_type {
    type: string
    description: "A classification that distinguishes between different types of Sales documents"
    sql: ${TABLE}.SalesOrderType ;;
  }

  dimension: sales_org {
    type: string
    description: "An Organizational Unit responsible for the sale of certain products or services. The responsibility of a Sales Organization may include legal liability for products and customer claims"
    sql: ${TABLE}.SalesOrg ;;
  }

  dimension: shipping_condition {
    type: string
    description: "General shipping strategy for the delivery of goods from the vendor to the customer"
    sql: ${TABLE}.ShippingCondition ;;
  }

  dimension: target_quantity {
    type: number
    description: "The target quantity for an item in a Sales Document. The quantity is expressed in Sales Units"
    sql: ${TABLE}.TargetQuantity ;;
  }

  dimension: target_quantity_unitof_measure {
    type: string
    description: "The unit of measure of the target quantity of a material"
    sql: ${TABLE}.TargetQuantityUnitofMeasure ;;
  }


  measure: count {
    label: "Number of Orders"
    type: count
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

  #TODO: confirm with team that this is correct
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
