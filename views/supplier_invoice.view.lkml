view: supplier_invoice {
  sql_table_name: `sap-adapter.p2p_sap_cdf_facts.supplier_invoice_fact`
    ;;

  dimension: amount_in_document_currency {
    type: number
    sql: ${TABLE}.AmountInDocumentCurrency ;;
  }

  dimension: assessable_value {
    type: number
    sql: ${TABLE}.AssessableValue ;;
  }

  dimension: base_unitof_measure {
    type: string
    sql: ${TABLE}.BaseUnitofMeasure ;;
  }

  dimension_group: baseline_payment {
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
    sql: ${TABLE}.BaselinePaymentDate ;;
  }

  dimension: company_code {
    type: string
    sql: ${TABLE}.CompanyCode ;;
  }

  dimension: currency_key {
    type: string
    sql: ${TABLE}.CurrencyKey ;;
  }

  dimension: debit_credit_indicator {
    type: string
    sql: ${TABLE}.DebitCreditIndicator ;;
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

  dimension: document_item_in_invoice_document {
    type: string
    sql: ${TABLE}.DocumentItemInInvoiceDocument ;;
  }

  dimension: document_numberof_reference_document {
    type: string
    sql: ${TABLE}.DocumentNumberofReferenceDocument ;;
  }

  dimension: document_type {
    type: string
    sql: ${TABLE}.DocumentType ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.ExchangeRate ;;
  }

  dimension: fiscal_year {
    type: string
    sql: ${TABLE}.FiscalYear ;;
  }

  dimension: fiscal_yearof_current_period {
    type: string
    sql: ${TABLE}.FiscalYearofCurrentPeriod ;;
  }

  dimension: gross_invoice_amount {
    type: number
    sql: ${TABLE}.GrossInvoiceAmount ;;
  }

  dimension: hsnor_saccode {
    type: string
    sql: ${TABLE}.HSNorSACCode ;;
  }

  dimension: invoice_document_number {
    type: string
    sql: ${TABLE}.InvoiceDocumentNumber ;;
  }

  dimension: invoice_document_status {
    type: string
    sql: ${TABLE}.InvoiceDocumentStatus ;;
  }

  dimension: invoice_verification {
    type: string
    sql: ${TABLE}.InvoiceVerification ;;
  }

  dimension: item_numberof_purchasing_document {
    type: string
    sql: ${TABLE}.ItemNumberofPurchasingDocument ;;
  }

  dimension: item_text {
    type: string
    sql: ${TABLE}.ItemText ;;
  }

  dimension: itemofa_reference_document {
    type: string
    sql: ${TABLE}.ItemofaReferenceDocument ;;
  }

  dimension: material_number {
    type: string
    sql: ${TABLE}.MaterialNumber ;;
  }

  dimension: plant {
    type: string
    sql: ${TABLE}.Plant ;;
  }

  dimension_group: posting {
    type: time
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
    sql: ${TABLE}.PostingDate ;;
  }

  dimension: product_type_group {
    type: string
    sql: ${TABLE}.ProductTypeGroup ;;
  }

  dimension: purchase_order_unitof_measure {
    type: string
    sql: ${TABLE}.PurchaseOrderUnitofMeasure ;;
  }

  dimension: purchasing_document_number {
    type: string
    sql: ${TABLE}.PurchasingDocumentNumber ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: reference_document_number {
    type: string
    sql: ${TABLE}.ReferenceDocumentNumber ;;
  }

  dimension: reference_key {
    type: string
    sql: ${TABLE}.ReferenceKey ;;
  }

  dimension: sequential_numberof_account_assignment {
    type: string
    sql: ${TABLE}.SequentialNumberofAccountAssignment ;;
  }

  dimension: tax_code {
    type: string
    sql: ${TABLE}.TaxCode ;;
  }

  dimension: taxon_sales_purchase_code {
    type: string
    sql: ${TABLE}.TaxonSalesPurchaseCode ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.TransactionType ;;
  }

  dimension: unplanned_delivery_costs {
    type: number
    sql: ${TABLE}.UnplannedDeliveryCosts ;;
  }

  dimension: valuation_area {
    type: string
    sql: ${TABLE}.ValuationArea ;;
  }

  dimension: valuation_class {
    type: string
    sql: ${TABLE}.ValuationClass ;;
  }

  dimension: valuation_type {
    type: string
    sql: ${TABLE}.ValuationType ;;
  }

  dimension: vendor_account_number {
    type: string
    sql: ${TABLE}.VendorAccountNumber ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

# New Created Measures

  measure: total_invoice_quantity {
    type: sum
    sql: ${quantity} ;;
    filters: [debit_credit_indicator: "S"]
    link: {
      label: "Supplier Deep Dive"
      url: "https://protodemo.cloud.looker.com/dashboards-next/85"
    }
  }

  measure: total_invoice_amount {
    type: sum
    sql: ${gross_invoice_amount} ;;
#    filters: [invoice_document_status: "X"]
    link: {
      label: "Supplier Deep Dive"
      url: "https://protodemo.cloud.looker.com/dashboards-next/85"
    }
  }
}
