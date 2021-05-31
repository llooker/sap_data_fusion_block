view: accounting_fact {
  sql_table_name: `sap-adapter.p2p_sap_cdf_facts.accounting_fact`
    ;;

  dimension: account_type {
    type: string
    description: "The account type determines whether the general ledger or one of the subledgers is used."
    sql: ${TABLE}.AccountType ;;
  }

  dimension: account_type_value {
    type: string
    sql: ${TABLE}.AccountTypeValue ;;
  }

  dimension: alternative_account_number_in_company_code {
    type: string
    description: "\"The alternative account number field in the company code area is freely definable. You could use it to enter: the account number from your legacy system or the account number from a country chart of accounts if your corporate group uses a standard chart of accounts. The alternative account number is only issued in the financial statement if you explicitly assign it to the relevant items in the financial statement version.\""
    sql: ${TABLE}.AlternativeAccountNumberInCompanyCode ;;
  }

  dimension: assignment_number {
    type: string
    description: "\"The assignment number is an additional information reference field in the line item. The program can display the account line items sorted according to the content of this field. You can either enter the field contents manually, or have the system define them automatically in the master record via the sort key field. You define the rules for the layout of the assignment number field in the Implementation Guide (IMG) under Determine Standard Sorting for Line Items.\""
    sql: ${TABLE}.AssignmentNumber ;;
  }

  dimension: chart_of_accounts {
    type: string
    description: "Key that uniquely identifies a chart of accounts."
    sql: ${TABLE}.ChartOfAccounts ;;
  }

  dimension: chart_of_accounts_according_to_country_legislation {
    type: string
    description: "The country chart of accounts represents the account structure prescribed under national regulations."
    sql: ${TABLE}.ChartOfAccountsAccordingToCountryLegislation ;;
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

  dimension: debit_credit_indicator {
    type: string
    description: "Shows on which side of the account (S = debit, H = credit) the transaction figures are updated."
    sql: ${TABLE}.DebitCreditIndicator ;;
  }

  dimension: debit_credit_indicator_text {
    type: string
    sql: ${TABLE}.DebitCreditIndicatorText ;;
  }

  dimension_group: document_date_in_document {
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
    sql: ${TABLE}.DocumentDateInDocument ;;
  }

  dimension: document_status {
    type: string
    description: "Documents with a special function are indicated by a document status. Examples include sample documents and recurring entry original documents."
    sql: ${TABLE}.DocumentStatus ;;
  }

  dimension: document_status_value {
    type: string
    sql: ${TABLE}.DocumentStatusValue ;;
  }

  dimension: document_type {
    type: string
    description: "\"The document type classifies the accounting documents. It is stored in the document header. Attributes that control the entry of the document, or which are themselves noted in the document, are defined for each document type. In particular, the number range assigned to the associated documents is defined on the basis of the document type.\""
    sql: ${TABLE}.DocumentType ;;
  }

  dimension: fiscal_year_variant {
    type: string
    description: "The fiscal year variant is used to define the fiscal year."
    sql: ${TABLE}.FiscalYearVariant ;;
  }

  dimension: indicator_open_item_management {
    type: string
    description: "\"Determines that open items are managed for this account.Items posted to accounts managed on an open item basis are marked as open or cleared. The balance of these accounts is always equal to the balance of the open items.  \""
    sql: ${TABLE}.IndicatorOpenItemManagement ;;
  }

  dimension: item_category {
    type: string
    description: "The item category characterizes the items of an accounting document. It is derived from the account type (such as asset and customer). In the G/L account area, there can be more than one possible item category. An assignment has to be defined by means of the G/L account number for the derivable item categories that are not automatically defined."
    sql: ${TABLE}.ItemCategory ;;
  }

  dimension: item_number_of_purchasing_document {
    type: string
    description: "Specifies the number that uniquely identifies an item in a purchasing document."
    sql: ${TABLE}.ItemNumberOfPurchasingDocument ;;
  }

  dimension: ledger_in_general_ledger_accounting {
    type: string
    description: "Identifies a ledger in General Ledger Accounting."
    sql: ${TABLE}.LedgerInGeneralLedgerAccounting ;;
  }

  dimension: ledger_name {
    type: string
    sql: ${TABLE}.LedgerName ;;
  }

  dimension: material_number {
    type: string
    description: "Alphanumeric key uniquely identifying the material."
    sql: ${TABLE}.MaterialNumber ;;
  }

  dimension: offsetting_account_number {
    type: string
    description: "In this field, the system determines the offsetting account for the item, as long as the account is maintained in the corresponding account assignment."
    sql: ${TABLE}.OffsettingAccountNumber ;;
  }

  dimension: offsetting_account_type {
    type: string
    description: "\"This field specifies the accounting area to which the offsetting account belongs. Examples of offsetting account types are Assets Customers Vendors Materials G/L accounts The account type is needed in addition to the account number so as to uniquely identify an account since the same account number can be used for each account type. \""
    sql: ${TABLE}.OffsettingAccountType ;;
  }

  dimension: offsetting_account_type_value {
    type: string
    sql: ${TABLE}.OffsettingAccountTypeValue ;;
  }

  dimension: period_year {
    type: string
    description: "\"Entry field for period and year. The entry format for this field is defined by the date format in the user master.\""
    sql: ${TABLE}.PeriodYear ;;
  }

  dimension: plant {
    type: string
    description: "Key uniquely identifying a plant."
    sql: ${TABLE}.Plant ;;
  }

  dimension_group: posting_date_in_the_document {
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
    sql: ${TABLE}.PostingDateInTheDocument ;;
  }

  dimension: posting_key {
    type: string
    description: "\"The posting key describes the type of transaction which is entered in a line item. For every posting key, you specify properties which control the entry of the line item or are noted in the line item itself. The most important properties which are derived from the posting key are: The account type The allocation to the debits or credits side The possible or necessary specifications which are to be entered in the line item.\""
    sql: ${TABLE}.PostingKey ;;
  }

  dimension: posting_key_name {
    type: string
    sql: ${TABLE}.PostingKeyName ;;
  }

  dimension: posting_period {
    type: string
    description: "A posting period is a self-contained part of a fiscal year."
    sql: ${TABLE}.PostingPeriod ;;
  }

  dimension: price_control_indicator {
    type: string
    description: "\"Indicates the price control used to valuate the stock of a material. You have the following options: Standard price Moving average price \""
    sql: ${TABLE}.PriceControlIndicator ;;
  }

  dimension: price_control_indicator_value {
    type: string
    sql: ${TABLE}.PriceControlIndicatorValue ;;
  }

  dimension: purchasing_document_number {
    type: string
    description: "Alphanumeric key uniquely identifying the document."
    sql: ${TABLE}.PurchasingDocumentNumber ;;
  }

  dimension: special_glindicator {
    type: string
    description: "\"Indicator that identifies a special G/L transaction.For all line items in customer or vendor accounts that are updated to an alternative reconciliation account, the special G/L indicator determines which account is to be selected.  \""
    sql: ${TABLE}.SpecialGLIndicator ;;
  }

  dimension: tax_on_sales_purchases_code {
    type: string
    description: "\"The tax code represents a tax category which must be taken into consideration when making a tax return to the tax authorities. Tax codes are unique per country. The tax rate calculation rules and further features are stored in a table for each tax code. \""
    sql: ${TABLE}.TaxOnSalesPurchasesCode ;;
  }

  dimension: transaction_key {
    type: string
    description: "\"The transaction keys are used to determine accounts or posting keys for line items which are created automatically by the system. The transaction keys are defined in the system and cannot be changed by the user.\""
    sql: ${TABLE}.TransactionKey ;;
  }

  dimension: transaction_type_for_general_ledger {
    type: string
    description: "Entry for a transaction type."
    sql: ${TABLE}.TransactionTypeForGeneralLedger ;;
  }

  dimension: transaction_type_for_general_ledger_text {
    type: string
    sql: ${TABLE}.TransactionTypeForGeneralLedgerText ;;
  }

  dimension: type_of_ageneral_ledger_account {
    type: string
    description: "Specifies the general ledger account type that classifies the general ledger account."
    sql: ${TABLE}.TypeOfAGeneralLedgerAccount ;;
  }

  dimension: type_of_origin_object {
    type: string
    description: "The transaction data in Profit Center Accounting is divided according to what type of object it was posted to. This field indicates whether the data referred to was transferred from cost centers, internal orders, or another object"
    sql: ${TABLE}.TypeOfOriginObject ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.UserName ;;
  }

  dimension: valuation_area {
    type: string
    description: "\"Organizational level at which the material is valuated. A valuation area can be one of the following: Plant All plants belonging to a company code, in which case the valuation area is the company code \""
    sql: ${TABLE}.ValuationArea ;;
  }

  measure: count {
    type: count
    drill_fields: [posting_key_name, company_name, ledger_name, user_name]
  }
}
