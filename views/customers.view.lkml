view: customers {
  sql_table_name: `sap-adapter.p2p_sap_cdf_dimension.customer_dimension` ;;
  #sql_table_name: ` @{PROJECT}.@{DIMENSION_DATASET}.customer_dimension` ;;

  dimension: account_group {
    type: string
    description: "The Account Group is a classifying feature within customer master records"
    sql: ${TABLE}.AccountGroup ;;
  }

  dimension: address {
    group_label: "Location"
    type: string
    description: "Identification of an address (Name, Postal code, City, and so on) in Business Address Services"
    sql: ${TABLE}.Address ;;
  }

  dimension: ait_payer_in_doc {
    type: string
    description: "Indicator, Is an alternative payer allowed in document"
    sql: ${TABLE}.AItPayerInDoc ;;
  }

  dimension: alternative_payer {
    type: string
    description: "Account Number of the Customer for whom automatic payment transactions are to be carried out"
    sql: ${TABLE}.AlternativePayer ;;
  }

  dimension: authorization_group {
    type: string
    description: "The authorization group allows extended authorization protection for particular objects"
    sql: ${TABLE}.AuthorizationGroup ;;
  }

  dimension: billing_block_description {
    type: string
    description: "Description for Billing blocks"
    sql: ${TABLE}.BillingBlockDescription ;;
  }

  dimension: block_reason_description {
    type: string
    description: "Description for blocking reason"
    sql: ${TABLE}.BlockReasonDescription ;;
  }

  dimension: central_billing_block {
    type: string
    description: "Indicates if the processing of billing documents is blocked for the customer in all Sales Areas"
    sql: ${TABLE}.CentralBillingBlock ;;
  }

  dimension: central_deletion_block {
    type: string
    description: "This indicator specifies that the general data in the master record may not be deleted"
    sql: ${TABLE}.CentralDeletionBlock ;;
  }

  dimension: central_deletion_flag {
    type: string
    description: "Indicates if delivery processing is blocked for the customer in all Sales Areas"
    sql: ${TABLE}.CentralDeletionFlag ;;
  }

  dimension: central_delivery_block {
    type: string
    description: "Indicates if delivery processing is blocked for the customer in all sales areas"
    sql: ${TABLE}.CentralDeliveryBlock ;;
  }

  dimension: central_order_block {
    type: string
    description: "Indicates if Sales Order processing is blocked for the customer in all Sales areas"
    sql: ${TABLE}.CentralOrderBlock ;;
  }

  dimension: central_posting_block {
    type: string
    description: "Indicates that the account is blocked for posting for all company codes"
    sql: ${TABLE}.CentralPostingBlock ;;
  }

  dimension: central_sales_block {
    type: string
    description: "Central Sales Block for Customer"
    sql: ${TABLE}.CentralSalesBlock ;;
  }

  dimension: city {
    group_label: "Location"
    type: string
    description: "Name of the City as a part of the address"
    sql: ${TABLE}.City ;;
  }

  dimension: city_code {
    hidden: yes
    type: string
    description: "Internal City Code as part of the address"
    sql: ${TABLE}.CityCode ;;
    group_label: "Location"
  }

  dimension: client {
    type: string
    description: "SAP Process internal reference field"
    sql: ${TABLE}.Client ;;

  }

  dimension: competitors {
    type: string
    description: "Customer Number of the Competitor. Competitors are managed in the SAP system as Customers of a particular Account Group. This account group defines internally that the customer is a competitor"
    sql: ${TABLE}.Competitors ;;
  }

  dimension: condition_group1 {
    group_label: "Condition Group"
    type: string
    description: "Condition groups 1 - 5 from the customer record, a customer can be assigned to a group that can be used during subsequent processing (order, delivery, billing document...) for condition determination and pricing"
    sql: ${TABLE}.ConditionGroup1 ;;
  }

  dimension: condition_group2 {
    type: string
    description: "Condition groups 1 - 5 from the customer record, a customer can be assigned to a group that can be used during subsequent processing (order, delivery, billing document...) for condition determination and pricing"
    sql: ${TABLE}.ConditionGroup2 ;;
  }

  dimension: condition_group3 {
    type: string
    description: "Condition groups 1 - 5 from the customer record, a customer can be assigned to a group that can be used during subsequent processing (order, delivery, billing document...) for condition determination and pricing"
    sql: ${TABLE}.ConditionGroup3 ;;
  }

  dimension: condition_group4 {
    type: string
    description: "Condition groups 1 - 5 from the customer record, a customer can be assigned to a group that can be used during subsequent processing (order, delivery, billing document...) for condition determination and pricing"
    sql: ${TABLE}.ConditionGroup4 ;;
  }

  dimension: condition_group5 {
    type: string
    description: "Condition groups 1 - 5 from the customer record, a customer can be assigned to a group that can be used during subsequent processing (order, delivery, billing document...) for condition determination and pricing"
    sql: ${TABLE}.ConditionGroup5 ;;
  }

  dimension_group: confirmation {
    type: time
    description: "Timestamo on which the master record changes were confirmed"
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
    datatype: timestamp
    sql: TIMESTAMP(CONCAT(${TABLE}.ConfirmationDate,' ',${TABLE}.ConfirmationTime)) ;;
  }

  dimension: confirmation_status {
    type: string
    description: "This field gives the status of the confirmation of sensitive changes (dual control) to the general data"
    sql: ${TABLE}.ConfirmationStatus ;;
  }

  dimension: country {
    group_label: "Location"
    hidden: yes
    type: string
    description: "Specification of the Country Key for the customer"
    sql: ${TABLE}.Country ;;
  }

  dimension: country_name {
    group_label: "Location"
    type: string
    description: "Name of the Country"
    sql: ${TABLE}.CountryName ;;
    map_layer_name: countries
  }

  dimension: county_code {
    group_label: "Location"
    type: string
    description: "Internal State Code as part of the address"
    sql: ${TABLE}.CountyCode ;;
    hidden: yes
  }

  dimension: created_by {
    type: string
    description: "Name with which the user who entered the master record was logged on in the System"
    sql: ${TABLE}.CreatedBy ;;
  }

  dimension_group: created {
    type: time
    description: "Date on which the master record, or the part of the master record being viewed was created"
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
    description: "Specifies a classification of the Customer"
    sql: ${TABLE}.CustomerClass ;;
  }

  dimension: customer_group {
    type: string
    description: "Customer belonging to a group"
    sql: ${TABLE}.CustomerGroup ;;
  }

  dimension: customer_name {
    type: string
    description: "Name of the customer"
    sql: ${TABLE}.CustomerName ;;
  }

  dimension: customer_number {
    primary_key: yes
    type: string
    description: "Alphanumeric Key, which identifies the customer system"
    sql: ${TABLE}.CustomerNumber ;;
    link: {
      label: "Customer Dashboard"
      url: "/dashboards-next/sap::customer_deep_dive?Customer%20Number={{ value }}"
    }
  }

  dimension: fiscal_address {
    hidden: yes
    type: string
    description: "Account Number of another master record in which the official address is stored"
    sql: ${TABLE}.FiscalAddress ;;
  }

  dimension: industry {
    type: string
    description: "An industry is a distinct group of companies with the same basic business activity"
    sql: ${TABLE}.Industry ;;
  }

  dimension: language_key {
    type: string
    description: "The language key indicates - the language in which texts are displayed, the language in which you enter texts, the language in which the system prints texts"
    sql: ${TABLE}.LanguageKey ;;
  }

  dimension: location_code {
    hidden: yes
    group_label: "Location"
    type: string
    description: "Coordinates of the city in which the headquarters of the customer are located"
    sql: ${TABLE}.LocationCode ;;
  }

  dimension: onetime_account {
    type: string
    description: "Identification of an address (Name, Postal code, City) in Business Address Services"
    sql: ${TABLE}.OnetimeAccount ;;
  }

  dimension: postal_code {
    type: string
    description: "This field contains the Postal Code for the house address (Street and City)"
    sql: ${TABLE}.PostalCode ;;
    group_label: "Location"
    map_layer_name: us_zipcode_tabulation_areas
  }

  dimension: prospect {
    type: string
    description: "Business Partner where Company Sales team is pursuing to convert into a new Customer"
    sql: ${TABLE}.Prospect ;;
  }

  dimension: region {
    group_label: "Location"
    type: string
    description: "Business Region is a business region (North America, Europe or Asia) within the Company for which separate financial statements have been established to measure financial performance"
    sql: ${TABLE}.Region ;;
    map_layer_name: us_states
  }

  dimension: region_name {
    group_label: "Location"
    type: string
    description: "Name of the Region"
    sql: ${TABLE}.RegionName ;;
  }

  dimension: regional_market {
    type: string
    description: "Customer Business Area for certain Regional Market"
    sql: ${TABLE}.RegionalMarket ;;
  }

  dimension: sales_partner {
    type: string
    description: "Legal Business Entity to create Contracts"
    sql: ${TABLE}.SalesPartner ;;
  }

  dimension: search_term {
    type: string
    description: "Short name which is used to set up a matchcode"
    sql: ${TABLE}.SearchTerm ;;
  }

  dimension: street {
    group_label: "Location"
    type: string
    description: "Street and House number as part of the address"
    sql: ${TABLE}.Street ;;
  }

  dimension: title {
    type: string
    description: "Name of the person who created the object"
    sql: ${TABLE}.Title ;;
  }

  dimension: trading_partner_no {
    type: string
    description: "Company ID standard for the whole group"
    sql: ${TABLE}.TradingPartnerNo ;;
  }

  dimension: transportation_zone {
    type: string
    description: "Transportation zone to or from which the goods are delivered"
    sql: ${TABLE}.TransportationZone ;;
  }

  dimension: type_of_business {
    type: string
    description: "Business Object represented as a Business Entity"
    sql: ${TABLE}.TypeOfBusiness ;;
  }

  dimension: type_of_industry {
    type: string
    description: "Legal Business Entity for different industries"
    sql: ${TABLE}.TypeOfIndustry ;;
  }

  dimension: unloading_points {
    type: string
    description: "Indicator, Unloading points exist"
    sql: ${TABLE}.UnloadingPoints ;;
  }

  dimension: vatregistration_number {
    type: string
    description: "VAT registration number (VAT reg.no.) of the customer, vendor or your company code"
    sql: ${TABLE}.VATRegistrationNumber ;;
  }

  dimension: vendor {
    type: string
    description: "Specifies an alphanumeric key that uniquely identifies the vendor in the system"
    sql: ${TABLE}.Vendor ;;
  }

  dimension: working_times {
    type: string
    description: "Working Time Calendar"
    sql: ${TABLE}.WorkingTimes ;;
  }

  measure: count {
    type: count
    drill_fields: [region_name, country_name, customer_name]
  }
}
