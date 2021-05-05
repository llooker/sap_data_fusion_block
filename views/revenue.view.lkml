view: revenue {
  sql_table_name: `sap-adapter.sap_cdf_facts.revenue_fact`
    ;;

  dimension: account_type {
    type: string
    sql: ${TABLE}.AccountType ;;
  }

  dimension: base_unit {
    type: string
    sql: ${TABLE}.BaseUnit ;;
  }

  dimension: business_area {
    type: string
    sql: ${TABLE}.BusinessArea ;;
  }

  dimension: company_code {
    type: string
    sql: ${TABLE}.CompanyCode ;;
  }

  dimension: company_code_currency {
    type: string
    sql: ${TABLE}.CompanyCodeCurrency ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.Customer ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.Discount ;;
  }

  dimension: document_number {
    type: string
    sql: ${TABLE}.DocumentNumber ;;
  }

  dimension: functional_area {
    type: string
    sql: ${TABLE}.FunctionalArea ;;
  }

  dimension: global_currency {
    type: string
    sql: ${TABLE}.GlobalCurrency ;;
  }

  dimension: gross_sales {
    type: number
    sql: ${TABLE}.GrossSales ;;
  }

  dimension: line_item {
    type: string
    sql: ${TABLE}.LineItem ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.Material ;;
  }

  dimension: net_sales_after_discount {
    type: number
    sql: ${TABLE}.NetSalesAfterDiscount ;;
  }

  dimension: net_sales_before_discount {
    type: number
    sql: ${TABLE}.NetSalesBeforeDiscount ;;
  }

  dimension_group: payment_posting {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      month_name,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PaymentPostingDate ;;
  }

  dimension: plant {
    type: string
    sql: ${TABLE}.Plant ;;
  }

  dimension: profit_center {
    type: string
    sql: ${TABLE}.ProfitCenter ;;
  }

  dimension: transaction_currency {
    type: string
    sql: ${TABLE}.TransactionCurrency ;;
  }

  measure: count {
    label: "Number of Documents"
    type: count
    drill_fields: []
  }

  measure: total_net_sales_after_discount {
    value_format_name: usd
    type: sum
    sql: ${net_sales_after_discount} ;;
  }

  measure: total_net_sales_before_discount {
    value_format_name: usd
    type: sum
    sql: ${net_sales_before_discount} ;;
  }

  measure: total_discount {
    value_format_name: usd
    type: sum
    sql: ${discount} ;;
  }

  measure: total_gross_sales {
    value_format_name: usd
    type: sum
    sql: ${gross_sales} ;;
  }

  measure: percent_discount {
    type: number
    value_format_name: percent_2
    sql: ${total_discount}/nullif(${total_gross_sales},0) ;;
  }

}
