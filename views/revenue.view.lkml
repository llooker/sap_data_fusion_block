view: revenue {
  sql_table_name: `@{PROJECT}.@{FACT_DATASET}.revenue_fact`;;
  drill_fields: [material,total_discount,total_gross_sales]

  dimension: account_type {
    type: string
    description: "G/L Accounts used to provide picture of external accounting to record all business transaction"
    sql: ${TABLE}.AccountType ;;
  }

  dimension: base_unit {
    hidden: yes
    type: string
    description: "Specifies the measure in which the material is available"
    sql: ${TABLE}.BaseUnit ;;
  }

  dimension: business_area {
    type: string
    description: "Transactional figures for G/L accounts that are managed separately"
    sql: ${TABLE}.BusinessArea ;;
  }

  dimension: company_code {
    type: string
    description: "Company Code is a smallest organizational unit used to represent the company for external accounting"
    sql: ${TABLE}.CompanyCode ;;
  }

  dimension: company_code_currency {
    type: string
    description: "Currency applied at the Company Code"
    sql: ${TABLE}.CompanyCodeCurrency ;;
  }

  dimension: customer {
    hidden: yes
    type: string
    description: "Alphanumeric Key, which identifies the customer system"
    sql: ${TABLE}.Customer ;;
  }

  dimension: discount {
    type: number
    description: "Discount amount"
    sql: ${TABLE}.Discount ;;
  }

  dimension: document_number {
    primary_key: yes
    type: string
    description: "Financial Reference Document Number"
    sql: ${TABLE}.DocumentNumber ;;
  }

  dimension: functional_area {
    type: string
    description: "Organization Unit that classifies operating expenses for a Company"
    sql: ${TABLE}.FunctionalArea ;;
  }

  dimension: global_currency {
    type: string
    description: "Currency applied at the Global level"
    sql: ${TABLE}.GlobalCurrency ;;
  }

  dimension: gross_sales {
    type: number
    description: "Gross sales are the grand total of sale transactions within a certain time period for a company. Net sales are calculated by deducting sales allowances, sales discounts, and sales returns from gross sales"
    sql: ${TABLE}.GrossSales ;;
  }

  dimension: line_item {
    type: string
    description: "Detailed Financial Document reference at Line Item level"
    sql: ${TABLE}.LineItem ;;
  }

  dimension: material {
    hidden: yes
    type: string
    description: "Alphanumeric key, uniquely identifying the material"
    sql: ${TABLE}.Material ;;
  }

  dimension: net_sales_after_discount {
    type: number
    description: "Net amount calculated after discount"
    sql: ${TABLE}.NetSalesAfterDiscount ;;
  }

  dimension: net_sales_before_discount {
    type: number
    description: "Net amount calculated before discount"
    sql: ${TABLE}.NetSalesBeforeDiscount ;;
  }

  dimension_group: payment_posting {
    type: time
    description: "Indicates the posting period for posting for all company codes"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      month_name
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PaymentPostingDate ;;
  }

  dimension: plant {
    type: string
    description: "Plant is an independent, physical and highest organizational unit"
    sql: ${TABLE}.Plant ;;
  }

  dimension: profit_center {
    type: string
    description: "A profit center is a branch or division of a company"
    sql: ${TABLE}.ProfitCenter ;;
  }

  dimension: transaction_currency {
    type: string
    description: "Currency applied on the Transaction"
    sql: ${TABLE}.TransactionCurrency ;;
  }

  measure: count {
    hidden: yes
    label: "Number of Documents"
    type: count
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
    description: "The total discount divided by the total gross sales"
    type: number
    value_format_name: percent_2
    sql: ${total_discount}/nullif(${total_gross_sales},0) ;;
  }

}
