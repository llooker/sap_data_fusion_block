view: customers {
  sql_table_name: `sap-adapter.sap_cdf_dimensions.customer_dimension`;;

  dimension: account_group {
    type: string
    sql: ${TABLE}.AccountGroup ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: aipayer_in_doc {
    type: string
    sql: ${TABLE}.AIPayerInDoc ;;
  }

  dimension: alternate_payer {
    type: string
    sql: ${TABLE}.AlternatePayer ;;
  }

  dimension: authorization {
    type: string
    sql: ${TABLE}.Authorization ;;
  }

  dimension: billing_block {
    type: string
    sql: ${TABLE}.BillingBlock ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: city_code {
    type: string
    sql: ${TABLE}.CityCode ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.Client ;;
  }

  dimension: competitor {
    type: string
    sql: ${TABLE}.Competitor ;;
  }

  dimension: condition_group1 {
    type: string
    sql: ${TABLE}.ConditionGroup1 ;;
  }

  dimension: condition_group2 {
    type: string
    sql: ${TABLE}.ConditionGroup2 ;;
  }

  dimension: condition_group3 {
    type: string
    sql: ${TABLE}.ConditionGroup3 ;;
  }

  dimension: condition_group4 {
    type: string
    sql: ${TABLE}.ConditionGroup4 ;;
  }

  dimension: condition_group5 {
    type: string
    sql: ${TABLE}.ConditionGroup5 ;;
  }

  dimension_group: confirm {
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
    sql: ${TABLE}.ConfirmDate ;;
  }

  dimension: confirm_status {
    type: string
    sql: ${TABLE}.ConfirmStatus ;;
  }

  # dimension_group: confirm {
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
  #   sql: ${TABLE}.ConfirmTime ;;
  # }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: county_code {
    type: string
    sql: ${TABLE}.CountyCode ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.CreatedBy ;;
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

  dimension: customer_class {
    type: string
    sql: ${TABLE}.CustomerClass ;;
  }

  dimension: customer_group {
    type: string
    sql: ${TABLE}.CustomerGroup ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CustomerName ;;
  }

  dimension: customer_number {
    type: string
    sql: ${TABLE}.CustomerNumber ;;
    link: {
      label: "Customer Dashboard"
      url: "https://protodemo.cloud.looker.com/dashboards-next/72?Customer%20Number={{ value }}"
    }
  }

  dimension: deletion_block {
    type: string
    sql: ${TABLE}.DeletionBlock ;;
  }

  dimension: deletion_flag {
    type: string
    sql: ${TABLE}.DeletionFlag ;;
  }

  dimension: delivery_block {
    type: string
    sql: ${TABLE}.DeliveryBlock ;;
  }

  dimension: fiscal_address {
    type: string
    sql: ${TABLE}.FiscalAddress ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.Industry ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.Language ;;
  }

  dimension: location_code {
    type: string
    sql: ${TABLE}.LocationCode ;;
  }

  dimension: on_time_acct {
    type: string
    sql: ${TABLE}.OnTimeAcct ;;
  }

  dimension: order_block {
    type: string
    sql: ${TABLE}.OrderBlock ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
    map_layer_name: us_zipcode_tabulation_areas
  }

  dimension: posting_block {
    type: string
    sql: ${TABLE}.PostingBlock ;;
  }

  dimension: prospect {
    type: string
    sql: ${TABLE}.Prospect ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
    map_layer_name: us_states
  }

  dimension: regional_market {
    type: string
    sql: ${TABLE}.RegionalMarket ;;
  }

  dimension: sales_block {
    type: string
    sql: ${TABLE}.SalesBlock ;;
  }

  dimension: sales_partner {
    type: string
    sql: ${TABLE}.SalesPartner ;;
  }

  dimension: search_term {
    type: string
    sql: ${TABLE}.SearchTerm ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.Street ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: trading_partner {
    type: string
    sql: ${TABLE}.TradingPartner ;;
  }

  dimension: transport_zone {
    type: string
    sql: ${TABLE}.TransportZone ;;
  }

  dimension: type_of_business {
    type: string
    sql: ${TABLE}.TypeOfBusiness ;;
  }

  dimension: type_of_industry {
    type: string
    sql: ${TABLE}.TypeOfIndustry ;;
  }

  dimension: unloading_points {
    type: string
    sql: ${TABLE}.UnloadingPoints ;;
  }

  dimension: vatregistration_number {
    type: string
    sql: ${TABLE}.VATRegistrationNumber ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.Vendor ;;
  }

  dimension: working_times {
    type: string
    sql: ${TABLE}.WorkingTimes ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_name]
  }
}
