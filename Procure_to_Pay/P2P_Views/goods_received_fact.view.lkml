view: goods_received_fact {
  sql_table_name: `sap-adapter.p2p_sap_cdf_facts.goods_received_fact`
    ;;

  dimension: amount_in_local_currency {
    type: number
    description: "Amount of the line item in the local currency of the company code."
    sql: ${TABLE}.AmountInLocalCurrency ;;
  }

  dimension: base_unitof_measure {
    type: string
    description: "Unit of measure in which stocks of the material are managed. The system converts all the quantities you enter in other units of measure (alternative units of measure) to the base unit of measure."
    sql: ${TABLE}.BaseUnitofMeasure ;;
  }

  dimension: base_unitof_measure_text {
    type: string
    sql: ${TABLE}.BaseUnitofMeasureText ;;
  }

  dimension: batch_number {
    type: string
    description: "Assigns a material that is manufactured in batches or production lots to a specific batch."
    sql: ${TABLE}.BatchNumber ;;
  }

  dimension: calendar_week {
    type: string
    description: "Number that represents a unique week in the year. A year is split up into 53 weeks (due to a leap year) on a seven-day week basis. Every week is represented by a unique number that is the same in each year."
    sql: ${TABLE}.CalendarWeek ;;
  }

  dimension_group: changed {
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
    sql: ${TABLE}.ChangedOn ;;
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

  dimension: consumption_quantity {
    type: number
    description: "Attribute that stores the updated consumption quantity when the corresponding material item is intended for consumption contribution."
    sql: ${TABLE}.ConsumptionQuantity ;;
  }

  dimension: controlling_area {
    type: string
    description: "\"Uniquely identifies a controlling area. The controlling area is the highest organizational unit in Controlling. \""
    sql: ${TABLE}.ControllingArea ;;
  }

  dimension: cost_center {
    type: string
    description: "A key that uniquely identifies a cost center."
    sql: ${TABLE}.CostCenter ;;
  }

  dimension: currency {
    type: string
    description: "Currency key for amounts in the system."
    sql: ${TABLE}.Currency ;;
  }

  dimension: currency_name {
    type: string
    sql: ${TABLE}.CurrencyName ;;
  }

  dimension: dayof_year {
    type: string
    description: "A number that represents a unique day in the year. For example, the first of February of a year always has the number \"32\". A year is split into 366 days. The number of days in a calendar year can differ due to a leap year, but every day is represented by a unique number that is the same in each year."
    sql: ${TABLE}.DayofYear ;;
  }

  dimension: debit_credit_indicator {
    type: string
    description: "Shows on which side of the account (S = debit, H = credit) the transaction figures are updated."
    sql: ${TABLE}.DebitCreditIndicator ;;
  }

  dimension: debit_credit_indicator_text {
    type: string
    sql: ${TABLE}.DebitCreditIndicatorText ;;
  }

  dimension: delivery {
    type: string
    description: "The number that uniquely identifies the delivery."
    sql: ${TABLE}.Delivery ;;
  }

  dimension: delivery_costs {
    type: number
    description: "Shows the delivery costs in local currency."
    sql: ${TABLE}.DeliveryCosts ;;
  }

  dimension: delivery_item {
    type: string
    description: "The number that uniquely identifies the item in a delivery."
    sql: ${TABLE}.DeliveryItem ;;
  }

  dimension: delivery_note_quantity {
    type: number
    description: "Indicates the quantity specified by the vendor as the delivered quantity in the accompanying papers (for example, delivery note)."
    sql: ${TABLE}.DeliveryNoteQuantity ;;
  }

  dimension: description_of_storage_location {
    type: string
    sql: ${TABLE}.DescriptionOfStorageLocation ;;
  }

  dimension_group: document {
    type: time
    description: "The document date is the date on which the original document was issued."
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

  dimension: document_type {
    type: string
    description: "\"The document type classifies the accounting documents. It is stored in the document header. Attributes that control the entry of the document, or which are themselves noted in the document, are defined for each document type. In particular, the number range assigned to the associated documents is defined on the basis of the document type. \""
    sql: ${TABLE}.DocumentType ;;
  }

  dimension: document_type_description {
    type: string
    sql: ${TABLE}.DocumentTypeDescription ;;
  }

  dimension: document_type_of_revaluation_document {
    type: string
    description: "Indicates the document type of the revaluation document that can be generated in addition to the accounting document. A separate document number range is defined for revaluation documents."
    sql: ${TABLE}.DocumentTypeOfRevaluationDocument ;;
  }

  dimension_group: entry {
    type: time
    description: "Specifies the date on which the accounting document is entered."
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
    sql: ${TABLE}.EntryDate ;;
  }

  dimension: fiscal_year {
    type: string
    description: "The fiscal year variant is used to define the fiscal year."
    sql: ${TABLE}.FiscalYear ;;
  }

  dimension: fiscal_year_reference_document {
    type: string
    sql: ${TABLE}.FiscalYearReferenceDocument ;;
  }

  dimension: good_receipt_document_number {
    type: string
    description: "\"The document number is the key the system uses to access the accounting document. The document number is unique per company code and fiscal year. When entering an accounting document, you can specify the number manually or it can be determined by the system from a pre-defined area (number range). The relevant area of the document numbers (number range) is determined in each company code per document type.\""
    sql: ${TABLE}.GoodReceiptDocumentNumber ;;
  }

  dimension: goods_receipt_material_lineitem {
    type: string
    description: "All line items within an accounting document receive a number with which they can be identified. The numbers are assigned consecutively by the system when entering the document."
    sql: ${TABLE}.GoodsReceiptMaterialLineitem ;;
  }

  dimension: identification {
    type: string
    description: "Specifies a line identification. The value must not be continuous or unbroken."
    sql: ${TABLE}.Identification ;;
  }

  dimension: item_automatically_created {
    type: string
    description: "Indicates that this item was created automatically."
    sql: ${TABLE}.ItemAutomaticallyCreated ;;
  }

  dimension: item_has_been_cancelled {
    type: string
    description: "Indicator that shows whether a specific material document item has been cancelled."
    sql: ${TABLE}.ItemHasBeenCancelled ;;
  }

  dimension: item_numberof_reservation {
    type: string
    description: "Specifies the number that uniquely identifies an item in a reservation or a dependent requirement."
    sql: ${TABLE}.ItemNumberofReservation ;;
  }

  dimension: material {
    type: string
    description: "Alphanumeric key uniquely identifying the material."
    sql: ${TABLE}.Material ;;
  }

  dimension: material_description {
    type: string
    sql: ${TABLE}.MaterialDescription ;;
  }

  dimension: material_document {
    type: string
    description: "\"Alphanumeric key uniquely identifying the document. Number of the material document with which a goods movement was posted. Together with the material document year, the document number constitutes the key via which a material document is accessed. \""
    sql: ${TABLE}.MaterialDocument ;;
  }

  dimension: material_document_counter {
    type: number
    description: "\"This field determines if the data from the material document header of a data record is relevant for reporting. For reports, the system considers only those records where the field has the value 1. This approach improves the performance. \""
    sql: ${TABLE}.MaterialDocumentCounter ;;
  }

  dimension: material_document_item {
    type: string
    description: "Specifies the number that uniquely identifies an item in of a material document."
    sql: ${TABLE}.MaterialDocumentItem ;;
  }

  dimension: material_document_year {
    type: string
    description: "Calendar year in which the material document was posted."
    sql: ${TABLE}.MaterialDocumentYear ;;
  }

  dimension: month {
    type: string
    description: "Number that represents a unique month in the year. For example, February always has the number \"2\". A year is split into 12 months. Each Month is represented by a unique number that is the same in each year."
    sql: ${TABLE}.Month ;;
  }

  dimension: movement_indicator {
    type: string
    description: "Specifies the type of document (such as purchase order or delivery note) that constitutes the basis for the movement."
    sql: ${TABLE}.MovementIndicator ;;
  }

  dimension: movement_type {
    type: string
    description: "Specifies a key for the type of goods movement. Each goods movement (for example, purchase order to warehouse) is allocated to a movement type in the system."
    sql: ${TABLE}.MovementType ;;
  }

  dimension: movement_type_text {
    type: string
    sql: ${TABLE}.MovementTypeText ;;
  }

  dimension: name_of_controlling_area {
    type: string
    sql: ${TABLE}.NameOfControllingArea ;;
  }

  dimension: number_of_reservation {
    type: string
    description: "Alphanumeric key uniquely identifying the document."
    sql: ${TABLE}.NumberOfReservation ;;
  }

  dimension: order_price_unit {
    type: string
    description: "Indicates the unit of measure to which the purchase order price relates."
    sql: ${TABLE}.OrderPriceUnit ;;
  }

  dimension: order_price_unit_text {
    type: string
    sql: ${TABLE}.OrderPriceUnitText ;;
  }

  dimension: order_unit {
    type: string
    description: "Specifies the unit of measure in which the material is ordered."
    sql: ${TABLE}.OrderUnit ;;
  }

  dimension: order_unit_text {
    type: string
    sql: ${TABLE}.OrderUnitText ;;
  }

  dimension: plant {
    type: string
    description: "Key uniquely identifying a plant."
    sql: ${TABLE}.Plant ;;
  }

  dimension: plant_name {
    type: string
    sql: ${TABLE}.PlantName ;;
  }

  dimension_group: posting {
    type: time
    description: "Date which is used when entering the document in Financial Accounting or Controlling."
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
    sql: ${TABLE}.PostingDate ;;
  }

  dimension: profit_center {
    type: string
    description: "Key which together with the controlling area uniquely identifies a profit center."
    sql: ${TABLE}.ProfitCenter ;;
  }

  dimension: purchase_order {
    type: string
    description: "Number of the purchase order to which the entry of services performed relates."
    sql: ${TABLE}.PurchaseOrder ;;
  }

  dimension: purchase_order_item {
    type: string
    description: "Specifies the number that uniquely identifies an item in a purchasing document."
    sql: ${TABLE}.PurchaseOrderItem ;;
  }

  dimension: quantity {
    type: number
    description: "Specification of a quantity."
    sql: ${TABLE}.Quantity ;;
  }

  dimension: quarter {
    type: string
    description: "A period of three consecutive months (for example, January through March), used for reporting purposes, for instance."
    sql: ${TABLE}.Quarter ;;
  }

  dimension: reasonfor_movement {
    type: string
    description: "Specifies a key you can use to call up a standard text stipulating the reason for a goods movement (for example, reason for a return delivery)."
    sql: ${TABLE}.ReasonforMovement ;;
  }

  dimension: record_type {
    type: string
    description: "\"Attribute field to distinguish between various aspects that are necessary for the creation of material documents and the subsequent reportings. This attribute field is part of the columnar-based data model, where all relevant data for the material document (including movement data) is stored in the single database table MATDOC. This database table contains all required data from the business transaction as well as data required for reporting purposes. \""
    sql: ${TABLE}.RecordType ;;
  }

  dimension: record_type_description {
    type: string
    sql: ${TABLE}.RecordTypeDescription ;;
  }

  dimension: reference {
    type: string
    description: "The reference document number can contain the document number of the customer/vendor. However it may contain a different value."
    sql: ${TABLE}.Reference ;;
  }

  dimension: reference_document {
    type: string
    description: "Number that uniquely identifies a reference document."
    sql: ${TABLE}.ReferenceDocument ;;
  }

  dimension: reference_document_item {
    type: string
    description: "\"All items in an accounting document are assigned a number that allows them to be uniquely identified. The numbers are assigned consecutively when the document is created. \""
    sql: ${TABLE}.ReferenceDocumentItem ;;
  }

  dimension: revaluation_document_type_description {
    type: string
    sql: ${TABLE}.RevaluationDocumentTypeDescription ;;
  }

  dimension: sales_order_item2 {
    type: string
    description: "Uniquely identifies an item within a sales order."
    sql: ${TABLE}.SalesOrderItem2 ;;
  }

  dimension: sales_order_number {
    type: string
    description: "Uniquely identifies a sales order."
    sql: ${TABLE}.SalesOrderNumber ;;
  }

  dimension: search_term_for_matchcode_search {
    type: string
    sql: ${TABLE}.SearchTermForMatchcodeSearch ;;
  }

  dimension: stock_type_quantity {
    type: number
    description: "Attribute field to store the change in stock (stock quantity)."
    sql: ${TABLE}.StockTypeQuantity ;;
  }

  dimension: storage_location {
    type: string
    description: "Number of the storage location in which the material is stored. A plant may contain one or more storage locations."
    sql: ${TABLE}.StorageLocation ;;
  }

  dimension: unitof_entry {
    type: string
    description: "Specifies the unit of measure in which the goods movement or inventory count is entered."
    sql: ${TABLE}.UnitofEntry ;;
  }

  dimension: unitof_entry_text {
    type: string
    sql: ${TABLE}.UnitofEntryText ;;
  }

  dimension: vendor_number {
    type: string
    description: "\"Alphanumeric key uniquely identifying the document.You can use the vendor number to keep track of requests for quotation, purchase orders and outline agreements.  \""
    sql: ${TABLE}.VendorNumber ;;
  }

  dimension: week_day {
    type: string
    description: "Number that represents a specific day of the week. A week is split into 7 days. Every day is represented by a unique number, which is the same every week."
    sql: ${TABLE}.WeekDay ;;
  }

  dimension: year {
    type: string
    description: "Number that represents a unique year. A year runs from January to December, and always comprises twelve months."
    sql: ${TABLE}.Year ;;
  }

  dimension: year_and_day {
    type: string
    description: "A sequence of numbers that combines the year and the day in the following way: a number that represents a specific year stands in front of a number that represents a specific day of the year."
    sql: ${TABLE}.YearAndDay ;;
  }

  dimension: year_and_month {
    type: string
    description: "A sequence of numbers that combines the year and the month in the following way: a number that represents a specific year stands in front of a number that represents a specific month of the year."
    sql: ${TABLE}.YearAndMonth ;;
  }

  dimension: year_and_quarter {
    type: string
    description: "A sequence of numbers that combines the year and the quarter in the following way: a number that represents a specific year stands in front of a number that represents a specific quarter of the year. A quarter is a period of three consecutive months."
    sql: ${TABLE}.YearAndQuarter ;;
  }

  dimension: year_and_week {
    type: string
    description: "\"A sequence of numbers that combines the year and the calendar week in the following way: a number that represents a specific year stands in front of a number that represents a specific week of the year. A year is split up into 53 weeks (due to leap year) on a seven-day week basis. Every week is represented by a unique number that is the same every year.\""
    sql: ${TABLE}.YearAndWeek ;;
  }

  measure: count {
    type: count
    drill_fields: [company_name, plant_name, currency_name]
  }

# New Created Measures

  measure: total_gr_quantity {
    type: sum
    sql: ${quantity} ;;
    filters: [movement_type: "101"]
  }

  measure: total_gr_amount {
    type: sum
    sql: ${amount_in_local_currency} ;;
    filters: [movement_type: "101"]
  }
}
