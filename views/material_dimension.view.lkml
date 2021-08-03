view: material_dimension {
  sql_table_name: `@{PROJECT}.@{DIMENSION_DATASET}.material_dimension`
    ;;

  dimension: authorization_group {
    type: string
    description: "In order to carry out a specific activity, the user must have authorization for the combination of the activity and the Authorization Group"
    sql: ${TABLE}.AuthorizationGroup ;;
  }

  dimension: base_unit_of_measure {
    type: string
    description: "Unit Of Measure in which stocks of the material are managed. The system converts all the quantities you enter in other units of measure to the base unit of measure"
    sql: ${TABLE}.BaseUnitOfMeasure ;;
  }

  dimension: client {
    type: string
    description: "SAP Process internal reference field"
    sql: ${TABLE}.Client ;;
  }

  dimension: comparison_price_unit {
    type: number
    description: "Number of Units of Measure in the content unit to which the comparison price relates"
    sql: ${TABLE}.ComparisonPriceUnit ;;
  }

  dimension: competitor {
    type: string
    description: "Customer Number of the Competitor. Competitors are managed in the SAP system as Customers of a particular Account Group. This account group defines internally that the customer is a competitor"
    sql: ${TABLE}.Competitor ;;
  }

  dimension: complete_maintenance_status {
    type: string
    description: "Maintenance status of complete material"
    sql: ${TABLE}.CompleteMaintenanceStatus ;;
  }

  dimension: container_requirements {
    type: string
    description: "Key for the regulation that governs which type of container the material must be stored and shipped in"
    sql: ${TABLE}.ContainerRequirements ;;
  }

  dimension: content_unit {
    type: string
    description: "Unit of Measure to which the statement of Net and Gross contents relates"
    sql: ${TABLE}.ContentUnit ;;
  }

  dimension_group: created_at {
    type: time
    description: "Time of Creation"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CreatedAtTime ;;
  }

  dimension: created_by {
    type: string
    description: "Name of Person who Created the Object"
    sql: ${TABLE}.CreatedBy ;;
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
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CreatedOn ;;
  }

  dimension: dangerous_goods_indicator_profile {
    type: string
    description: "Alphanumeric key that uniquely identifies the dangerous goods profile"
    sql: ${TABLE}.DangerousGoodsIndicatorProfile ;;
  }

  dimension_group: date_of_last_change {
    type: time
    description: "Date on which this rate was last changed"
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
    sql: ${TABLE}.DateOfLastChange ;;
  }

  dimension: division {
    type: string
    description: "A way of grouping materials, products or services. The system uses divisions to determine the sales areas and the business areas for a material, product or service"
    sql: ${TABLE}.Division ;;
  }

  dimension: division_name {
    type: string
    description: "A way of grouping materials, products or services. The system uses divisions to determine the sales areas and the business areas for a material, product or service)"
    sql: ${TABLE}.DivisionName ;;
  }

  dimension: document_number {
    type: string
    description: "Number of the drawing that exists for this Material"
    sql: ${TABLE}.DocumentNumber ;;
  }

  dimension: document_type {
    type: string
    description: "Subdivides the documents into groups that are subject to the same Organizational processes"
    sql: ${TABLE}.DocumentType ;;
  }

  dimension: ean {
    type: string
    description: "Defines how the system determines an International Article Number(EAN) to be assigned internally, and which check criteria an EAN of this category must fulfil"
    sql: ${TABLE}.EAN ;;
  }

  dimension: field_deactivated {
    type: string
    description: "Deactivated"
    sql: ${TABLE}.FieldDeactivated ;;
  }

  dimension: flag_materialfor_deletion {
    type: string
    description: "Flag Material for Deletion at Client Level"
    sql: ${TABLE}.FlagMaterialforDeletion ;;
  }

  dimension: gross_weight {
    type: number
    description: "Gross Weight expressed in the unit of weight specified in the Unit of Weight field"
    sql: ${TABLE}.GrossWeight ;;
  }

  dimension: height {
    type: number
    description: "Height of the material or its packaging, measured in the unit of dimension"
    sql: ${TABLE}.Height ;;
  }

  dimension: highly_viscous_indicator {
    type: string
    description: "Indicator that shows if the material is a highly viscous substance"
    sql: ${TABLE}.HighlyViscousIndicator ;;
  }

  dimension: industry_sector {
    type: string
    description: "Key that specifies the branch of industry to which the material is assigned"
    sql: ${TABLE}.IndustrySector ;;
  }

  dimension: internal_material_number {
    type: string
    description: "Number of firm's own (internal) inventory-managed material"
    sql: ${TABLE}.InternalMaterialNumber ;;
  }

  dimension: international_article_number {
    type: string
    description: "International Article Number (EAN/UPC)"
    sql: ${TABLE}.InternationalArticleNumber ;;
  }

  dimension: label_form {
    type: string
    description: "Determines the size and layout of the label. The label form specifies, whether the label is an adhesive or a pin-on label"
    sql: ${TABLE}.LabelForm ;;
  }

  dimension: label_type {
    type: string
    description: "Determines the way labels are created. The label type specifies, whether labels are preprinted by the supplier or created on a central printer"
    sql: ${TABLE}.LabelType ;;
  }

  dimension: length {
    type: number
    description: "Length of the material or its packaging, measured in the unit of dimension"
    sql: ${TABLE}.Length ;;
  }

  dimension: maintenance_status {
    type: string
    description: "Which user Department may maintain a material master record of a particular material type"
    sql: ${TABLE}.MaintenanceStatus ;;
  }

  dimension: manufacturer_part_profile {
    type: string
    description: "Defines how you can work with MPN materials in the procurement process"
    sql: ${TABLE}.ManufacturerPartProfile ;;
  }

  dimension: material {
    type: string
    description: "Alphanumeric key uniquely identifying the material"
    sql: ${TABLE}.Material ;;
  }

  dimension: material_category {
    type: string
    description: "Specifies the category of the material, whether it is a single material, configurable material or variant"
    sql: ${TABLE}.MaterialCategory ;;
  }

  dimension: material_co_product_indicator {
    type: string
    description: "Indicator you can use to specify that the material can also be used as a co-product"
    sql: ${TABLE}.MaterialCoProductIndicator ;;
  }

  dimension: material_description {
    type: string
    description: "Describes the material in more detail."
    sql: ${TABLE}.MaterialDescription ;;
  }

  dimension: material_group {
    type: string
    drill_fields: [material]
    description: "Key that you use to group together several materials or services with the same attributes, and to assign them to a particular material group"
    sql: ${TABLE}.MaterialGroup ;;
  }

  dimension: material_group_description {
    type: string
    description: "Key that you use to group together several materials or services with the same attributes, and to assign them to a particular material group"
    sql: ${TABLE}.MaterialGroupDescription ;;
  }

  dimension: material_qualified_for_goods_discount {
    type: string
    description: "Specifies whether and for what areas the material qualifies for a discount in kind"
    sql: ${TABLE}.MaterialQualifiedForGoodsDiscount ;;
  }

  dimension: material_type_description {
    type: string
    description: "Key that assigns the material to a group of materials such as raw materials, operating supplies or trading goods"
    sql: ${TABLE}.MaterialTypeDescription ;;
  }

  dimension: net_contents {
    type: number
    description: "The basic price is calculated on the basis of the net contents"
    sql: ${TABLE}.NetContents ;;
  }

  dimension: net_weight {
    type: number
    description: "Net Weight expressed in the unit of weight specified in the Unit of Weight field"
    sql: ${TABLE}.NetWeight ;;
  }

  dimension: object_changed_by {
    type: string
    description: "Name of person who changed object"
    sql: ${TABLE}.ObjectChangedBy ;;
  }

  dimension: old_material_number {
    type: string
    description: "Reference Number under which you have managed the material so far or still manage it"
    sql: ${TABLE}.OldMaterialNumber ;;
  }

  dimension: packaging_material_group {
    type: string
    description: "Material Group: Packaging Materials"
    sql: ${TABLE}.PackagingMaterialGroup ;;
  }

  dimension: page_format_of_production_memo {
    type: string
    description: "Page format of the material's production or inspection memo"
    sql: ${TABLE}.PageFormatOfProductionMemo ;;
  }

  dimension: product_hierarchy {
    type: string
    description: "Alphanumeric character string for grouping together materials by combining different characteristics. It is used for analysis and price determination"
    sql: ${TABLE}.ProductHierarchy ;;
  }

  dimension: production_inspection_memo {
    type: string
    description: "Number under which you have stored a production or inspection memo for the material"
    sql: ${TABLE}.ProductionInspectionMemo ;;
  }

  dimension: purchase_order_unit_of_measure {
    type: string
    description: "Specifies the Unit of Measure in which the material is ordered"
    sql: ${TABLE}.PurchaseOrderUnitOfMeasure ;;
  }

  dimension: season_year {
    type: string
    description: "Specifies the Season Year in which the material is sold for the first time"
    sql: ${TABLE}.SeasonYear ;;
  }

  dimension: size_dimensions {
    type: string
    description: "Text field that you can use as you like, for example, to record the size or dimensions of the material. The data you enter is merely for information and is not used by the system"
    sql: ${TABLE}.SizeDimensions ;;
  }

  dimension: stock_transfer_net_change_costing {
    type: string
    description: "This indicator allows information on usage to be collected with net change costing when special procurement types are being used"
    sql: ${TABLE}.StockTransferNetChangeCosting ;;
  }

  dimension: storage_conditions {
    type: string
    description: "Indicates what storage conditions are required for the material"
    sql: ${TABLE}.StorageConditions ;;
  }

  dimension: unit_of_dimension {
    type: string
    description: "Unit in which the dimensions of length, width and height of a material or its packaging are measured"
    sql: ${TABLE}.UnitOfDimension ;;
  }

  dimension: unit_of_measurement_text {
    type: string
    description: "A unit of measurement is a definite magnitude of a quantity, defined and adopted"
    sql: ${TABLE}.UnitOfMeasurementText ;;
  }

  dimension_group: valid_from {
    type: time
    description: "Date indicating as of when an entry is valid"
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
    sql: ${TABLE}.ValidFromDate ;;
  }

  dimension_group: valid_to {
    type: time
    description: "Date on which the material is to be deleted. This is the latest possible date of all TO-date referring to the material"
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
    sql: ${TABLE}.ValidToDate ;;
  }

  dimension: volume {
    type: number
    description: "Space that the material occupies per unit of volume. The volume refers to the unit specified in the Volume unit field"
    sql: ${TABLE}.Volume ;;
  }

  dimension: volume_unit {
    type: string
    description: "Unit referring to the volume of the material"
    sql: ${TABLE}.VolumeUnit ;;
  }

  dimension: weight_unit {
    type: string
    description: "Unit referring to the gross weight or net weight of the material"
    sql: ${TABLE}.WeightUnit ;;
  }

  dimension: width {
    type: number
    description: "Width of the material or its packaging, measured in the unit of dimension"
    sql: ${TABLE}.Width ;;
  }

  measure: count {
    type: count
    drill_fields: [division_name]
  }
}
