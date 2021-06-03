view: purchase_order {
  sql_table_name: `sap-adapter.p2p_sap_cdf_facts.purchase_order_fact`
    ;;

  dimension: account_assignment_category {
    type: string
    description: "Specifies whether accounting for an item is to be effected via an auxiliary account (such as a cost center)."
    sql: ${TABLE}.AccountAssignmentCategory ;;
  }

  dimension: change_time_stamp {
    type: number
    description: "ChangeTimeStamp"
    sql: ${TABLE}.ChangeTimeStamp ;;
  }

  dimension: client {
    type: string
    description: "SAP Process internal reference field"
    sql: ${TABLE}.Client ;;
  }

  dimension: company_code {
    type: string
    description: "The company code is an organizational unit within financial accounting."
    sql: ${TABLE}.CompanyCode ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.CompanyName ;;
  }

  dimension: confirmation_control_key {
    type: string
    description: "Determines which confirmation categories are expected for a PO item (e.g. order acknowledgment, shipping notification)."
    sql: ${TABLE}.ConfirmationControlKey ;;
  }

  dimension: currency_key {
    type: string
    description: "Currency key for amounts in the system."
    sql: ${TABLE}.CurrencyKey ;;
  }

  dimension: currency_type {
    type: string
    sql: ${TABLE}.CurrencyType ;;
  }

  dimension_group: date_on_which_the_record_was_created {
    type: time
    description: "Date on which the record was created"
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
    sql: ${TABLE}.DateOnWhichTheRecordWasCreated ;;
  }

  dimension_group: deadlinefor_submission_of_bid {
    type: time
    description: "Date by which the supplier is to submit the quotation."
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
    sql: ${TABLE}.DeadlineforSubmissionOfBid ;;
  }

  dimension: deletion_indicatorin_purchasing_document {
    type: string
    description: "Determines whether the item in the purchasing document is deleted or blocked."
    sql: ${TABLE}.DeletionIndicatorinPurchasingDocument ;;
  }

  dimension: description_of_purchasing_group {
    type: string
    sql: ${TABLE}.DescriptionOfPurchasingGroup ;;
  }

  dimension: description_of_purchasing_organization {
    type: string
    sql: ${TABLE}.DescriptionOfPurchasingOrganization ;;
  }

  dimension: description_of_release_indicator {
    type: string
    sql: ${TABLE}.DescriptionOfReleaseIndicator ;;
  }

  dimension: description_of_storage_location {
    type: string
    sql: ${TABLE}.DescriptionOfStorageLocation ;;
  }

  dimension: effective_value {
    type: number
    description: "Effective value of item"
    sql: ${TABLE}.EffectiveValue ;;
  }

  dimension: exchange_rate {
    type: number
    description: "Rate used BY the system IN translating figures from a foreign currency INTO the local currency."
    sql: ${TABLE}.ExchangeRate ;;
  }

  dimension: goods_receipt_indicator {
    type: string
    description: "Specifies whether the item involves a goods receipt."
    sql: ${TABLE}.GoodsReceiptIndicator ;;
  }

  dimension: goods_receipt_processing_timein_days {
    type: number
    description: "Number of workdays required after receiving the material for inspection and placement into storage."
    sql: ${TABLE}.GoodsReceiptProcessingTimeinDays ;;
  }

  dimension: gross_order_value_in_pocurrency {
    type: number
    description: "Value OF the purchase ORDER (excluding discounts OR surcharges). ORDER value = ORDER quantity X ORDER price."
    sql: ${TABLE}.GrossOrderValueInPOcurrency ;;
  }

  dimension: gross_weight {
    type: number
    description: "Gross weight expressed in the unit of weight specified by you in the Unit of weight field."
    sql: ${TABLE}.GrossWeight ;;
  }

  dimension: incoterms_part1 {
    type: string
    description: "Commonly used trading terms that comply with the standards established by the International Chamber of Commerce (ICC)."
    sql: ${TABLE}.IncotermsPart1 ;;
  }

  dimension: incoterms_part2 {
    type: string
    description: "Additional information FOR the primary Incoterm."
    sql: ${TABLE}.IncotermsPart2 ;;
  }

  dimension: indicator_for_grbased_invoice_verification {
    type: string
    description: "Indicator specifying that provision has been made for goods-receipt-based invoice verification for a purchase order item or invoice item."
    sql: ${TABLE}.IndicatorForGRBasedInvoiceVerification ;;
  }

  dimension: indicator_for_unlimited_over_delivery_allowed {
    type: string
    description: "Indicator that specifies whether unlimited overdelivery can be accepted for the item."
    sql: ${TABLE}.IndicatorForUnlimitedOverDeliveryAllowed ;;
  }

  dimension: invoice_receipt_indicator {
    type: string
    description: "Specifies whether an invoice receipt is linked to the purchase order item."
    sql: ${TABLE}.InvoiceReceiptIndicator ;;
  }

  dimension: item_categoryin_purchasing_document {
    type: string
    description: "Indicator which shows the item features. The item category controls whether the FOLLOWING entries AND procedures are necessary OR permitted FOR the item: material number additional account ASSIGNMENT inventory management IN the SAP System goods receipt invoice receipt"
    sql: ${TABLE}.ItemCategoryinPurchasingDocument ;;
  }

  dimension: item_numberof_purchasing_document {
    type: string
    description: "Concat OF Alphanumeric key uniquely identifying the document and Specifies the number that uniquely identifies an item IN a purchasing document."
    sql: ${TABLE}.ItemNumberofPurchasingDocument ;;
  }

  dimension: language_key {
    type: string
    description: "The key which texts are displayed"
    sql: ${TABLE}.LanguageKey ;;
  }

  dimension: language_name {
    type: string
    sql: ${TABLE}.LanguageName ;;
  }

  dimension_group: latest_possible_goods_receipt {
    type: time
    description: "This IS the latest acceptable date FOR goods receipt (GR)."
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
    sql: ${TABLE}.LatestPossibleGoodsReceiptDate ;;
  }

  dimension: material_group {
    type: string
    description: "Key that you use to group together several materials or services with the same attributes, and to assign them to a particular material group."
    sql: ${TABLE}.MaterialGroup ;;
  }

  dimension: material_group_description_in_long_text {
    type: string
    sql: ${TABLE}.MaterialGroupDescriptionInLongText ;;
  }

  dimension: material_number_usedby_vendor {
    type: string
    description: "Material number used by the supplier."
    sql: ${TABLE}.MaterialNumberUsedbyVendor ;;
  }

  dimension: name_of_person_who_created_the_object {
    type: string
    description: "Name of Person who Created the Object"
    sql: ${TABLE}.NameOfPersonWhoCreatedTheObject ;;
  }

  dimension: nameof_requisitioner {
    type: string
    description: "Indicates for whom the material or external service shown in the purchase requisition is to be ordered."
    sql: ${TABLE}.NameofRequisitioner ;;
  }

  dimension: net_order_price {
    type: number
    description: "Net price per price unit."
    sql: ${TABLE}.NetOrderPrice ;;
  }

  dimension: net_order_value_in_pocurrency {
    type: number
    description: "Value OF the purchase ORDER (including discounts AND surcharges) ORDER value = ORDER quantity X ORDER price."
    sql: ${TABLE}.NetOrderValueInPOCurrency ;;
  }

  dimension: net_weight {
    type: number
    description: "Net weight of item per unit of weight."
    sql: ${TABLE}.NetWeight ;;
  }

  dimension: number_of_the_document_condition {
    type: string
    description: "The internal number under which the system saves conditions that apply to a sales order, for example."
    sql: ${TABLE}.NumberOfTheDocumentCondition ;;
  }

  dimension: numberof_purchasing_info_record {
    type: string
    description: "Specifies the number that uniquely identifies a purchasing info record."
    sql: ${TABLE}.NumberofPurchasingInfoRecord ;;
  }

  dimension: order_price_unit {
    type: string
    description: "Indicates the unit OF measurement TO which the purchase ORDER price relates.Invoices are created USING price units AND purchase ORDER price units which constitute the basis FOR value postings. They can be stored IN the purchasing info record."
    sql: ${TABLE}.OrderPriceUnit ;;
  }

  dimension: over_delivery_tolerance_limit {
    type: number
    description: "Percentage (based on the order quantity) up to which an overdelivery of this item will be accepted."
    sql: ${TABLE}.OverDeliveryToleranceLimit ;;
  }

  dimension: planned_delivery_timein_days {
    type: number
    description: "Number of days required for external procurement."
    sql: ${TABLE}.PlannedDeliveryTimeinDays ;;
  }

  dimension: plant {
    type: string
    description: "Specifies the key for a production facility OR branch office WITHIN the company."
    sql: ${TABLE}.Plant ;;
  }

  dimension: plant_details_name {
    type: string
    sql: ${TABLE}.PlantDetailsName ;;
  }

  dimension: price_unit {
    type: number
    description: "Specifies how many units of the purchase order price unit the price is valid for."
    sql: ${TABLE}.PriceUnit ;;
  }

  dimension: profit_center {
    type: string
    description: "Key which together with the controlling area uniquely identifies a profit center."
    sql: ${TABLE}.ProfitCenter ;;
  }

  dimension: purchase_order_item_material_number {
    type: string
    description: "Alphanumeric key uniquely identifying the material."
    sql: ${TABLE}.PurchaseOrderItemMaterialNumber ;;
  }

  dimension: purchase_order_quantity {
    type: number
    description: "Quantity ordered by the buyer, to be supplied by the supplier."
    sql: ${TABLE}.PurchaseOrderQuantity ;;
  }

  dimension: purchase_order_unitof_measure {
    type: string
    description: "Specifies the unit of measure in which the material is ordered."
    sql: ${TABLE}.PurchaseOrderUnitofMeasure ;;
  }

  dimension: purchasing_document_category {
    type: string
    description: "Identifier that allows you to differentiate between various kinds of purchasing document in the SAP System."
    sql: ${TABLE}.PurchasingDocumentCategory ;;
  }

  dimension: purchasing_document_category_text {
    type: string
    sql: ${TABLE}.PurchasingDocumentCategoryText ;;
  }

  dimension_group: purchasing_document {
    type: time
    description: "Date on which the purchasing document was created."
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
    sql: ${TABLE}.PurchasingDocumentDate ;;
  }

  dimension: purchasing_document_number {
    type: string
    description: "Alphanumeric key uniquely identifying the document."
    sql: ${TABLE}.PurchasingDocumentNumber ;;
  }

  dimension: purchasing_document_type {
    type: string
    description: "Identifier allowing differentiation between the various kinds of purchasing document in the SAP system.On the basis of the purchasing document type, you can, for example, distinguish between a purchase order, an RFQ and a scheduling agreement."
    sql: ${TABLE}.PurchasingDocumentType ;;
  }

  dimension: purchasing_group {
    type: string
    description: "Key for a buyer or a group of buyers, who is/are responsible for certain purchasing activities."
    sql: ${TABLE}.PurchasingGroup ;;
  }

  dimension: purchasing_organization {
    type: string
    description: "Denotes the purchasing organization."
    sql: ${TABLE}.PurchasingOrganization ;;
  }

  dimension_group: quotation_submission {
    type: time
    description: "Date by which the supplier is to submit the quotation."
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
    sql: ${TABLE}.QuotationSubmissionDate ;;
  }

  dimension: release_group {
    type: string
    description: "Contains one or more release strategies."
    sql: ${TABLE}.ReleaseGroup ;;
  }

  dimension: release_indicator_purchasing_document {
    type: string
    description: "Specifies whether the purchasing document can be processed in or is blocked for follow-on functions."
    sql: ${TABLE}.ReleaseIndicatorPurchasingDocument ;;
  }

  dimension: release_state {
    type: string
    sql: ${TABLE}.ReleaseState ;;
  }

  dimension: release_strategy {
    type: string
    description: "Key for the release strategy."
    sql: ${TABLE}.ReleaseStrategy ;;
  }

  dimension: requirement_tracking_number {
    type: string
    description: "Number that facilitates the monitoring of the procurement of required materials or services. This number can relate to a requisition note (or requirement notice/slip) that was not generated in the system."
    sql: ${TABLE}.RequirementTrackingNumber ;;
  }

  dimension: returns_item {
    type: string
    sql: ${TABLE}.ReturnsItem ;;
  }

  dimension: shipping_block {
    type: string
    description: "This indicator cannot be SET manually. It IS SET IN cross-docking IN IS Retail AND normal delivery being effected FOR the item (via VL04). DATA element NOT used ON screen."
    sql: ${TABLE}.ShippingBlock ;;
  }

  dimension: short_description_of_purchasing_document_type {
    type: string
    sql: ${TABLE}.ShortDescriptionOfPurchasingDocumentType ;;
  }

  dimension: short_text {
    type: string
    description: "Short description of the material."
    sql: ${TABLE}.ShortText ;;
  }

  dimension: status_of_purchasing_document {
    type: string
    description: "Key specifying whether a quotation has been received in respect of an RFQ."
    sql: ${TABLE}.StatusOfPurchasingDocument ;;
  }

  dimension: storage_location {
    type: string
    description: "Number of the storage location in which the material is stored. A plant may contain one or more storage locations."
    sql: ${TABLE}.StorageLocation ;;
  }

  dimension: target_value_for_header_area_per_distribution {
    type: number
    description: "Displays the target value that is entered for each distribution at header level for a central contract."
    sql: ${TABLE}.TargetValueForHeaderAreaPerDistribution ;;
  }

  dimension: taxon_sales_purchases_code {
    type: string
    description: "The tax code represents a tax category which must be taken INTO consideration WHEN making a tax return TO the tax authorities. Tax codes are unique per country. The tax rate calculation rules AND further features are stored IN a TABLE FOR each tax code."
    sql: ${TABLE}.TaxonSalesPurchasesCode ;;
  }

  dimension: terms_of_payment_key {
    type: string
    description: "Key for defining payment terms composed of cash discount percentages and payment periods."
    sql: ${TABLE}.TermsOfPaymentKey ;;
  }

  dimension: under_delivery_tolerance_limit {
    type: number
    description: "Percentage (based on the order quantity) up to which an underdelivery of this item will be accepted."
    sql: ${TABLE}.UnderDeliveryToleranceLimit ;;
  }

  dimension: unit_of_measurement_text {
    type: string
    sql: ${TABLE}.UnitOfMeasurementText ;;
  }

  dimension: vendors_account_number {
    type: string
    description: "With the vendor number, information from the vendor master record (such as the vendor's address and bank details) is copied into a purchasing document (such as a request for quotation or a purchase order).You can use the vendor number to keep track of requests for quotation, purchase orders and outline agreements."
    sql: ${TABLE}.VendorsAccountNumber ;;
  }

  dimension: volume {
    type: number
    description: "Space that the material occupies per unit OF volume. The volume refers TO the unit specified IN the Volume unit field. The volume AND its unit always refer TO the base unit OF measure."
    sql: ${TABLE}.Volume ;;
  }

  measure: count {
    type: count
    drill_fields: [company_name, plant_details_name, language_name]
  }

# New Created Measures

  measure: total_po_amount {
    type: sum
    sql: ${net_order_value_in_pocurrency} ;;
#    filters: [returns_item: "NULL", deletion_indicatorin_purchasing_document: "-L"]
    link: {
      label: "Test"
      url: "https://protodemo.cloud.looker.com/dashboards-next/82"
    }
  }

  measure: total_po_quantity {
    type: sum
    sql: ${purchase_order_quantity} ;;
#    filters: [returns_item: "NULL", deletion_indicatorin_purchasing_document: "-L"]
  }

#  measure: total_distinct_po_count {
#    type: count
#    sql: ${purchasing_document_number} ;;
#  }

  measure: total_distinct_po_line_item_count {
    type: count
#    sql: ${purchasing_document_number} ;;
    filters: [deletion_indicatorin_purchasing_document: "-L"]
  }

  measure: total_po_line_item_returns_quantity {
    type: sum
    sql: ${purchase_order_quantity} ;;
    filters: [returns_item: "-NULL", deletion_indicatorin_purchasing_document: "-L"]
  }

  measure: total_po_line_item_return_count {
    type: sum
    sql: ${purchasing_document_number} ;;
    filters: [returns_item: "-NULL", deletion_indicatorin_purchasing_document: "-L"]
  }

  measure: po_return_value {
    type: sum
    sql: ${net_order_value_in_pocurrency} ;;
    filters: [returns_item: "-NULL", deletion_indicatorin_purchasing_document: "-L"]
  }
}
