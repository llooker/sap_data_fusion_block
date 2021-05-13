view: materials {
  sql_table_name: `@{PROJECT}.@{DIMENSION_DATASET}.material_dimension`;;
  drill_fields: [material,material_group,material_category,product_hierarchy]

  dimension: authorization_group {
    type: string
    description: "In order to carry out a specific activity, the user must have authorization for the combination of the activity and the Authorization Group"
    sql: ${TABLE}.AuthorizationGroup ;;
  }

  dimension: base_unitof_measure {
    type: string
    description: "Unit Of Measure in which stocks of the material are managed. The system converts all the quantities you enter in other units of measure to the base unit of measure"
    sql: ${TABLE}.BaseUnitofMeasure ;;
  }

  dimension: changed_by {
    type: string
    description: "Name of person who changed object"
    sql: ${TABLE}.ChangedBy ;;
  }

  dimension: client {
    type: string
    description: "SAP Process internal reference field"
    sql: ${TABLE}.Client ;;
  }

  dimension: competitor {
    type: string
    description: "Customer Number of the Competitor. Competitors are managed in the SAP system as Customers of a particular Account Group. This account group defines internally that the customer is a competitor"
    sql: ${TABLE}.Competitor ;;
  }

  dimension: completion_status {
    type: string
    description: "Maintenance status of complete material"
    sql: ${TABLE}.CompletionStatus ;;
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
    datatype: timestamp
    sql: CONCAT(${TABLE}.CreatedOn,' ',${TABLE}.CreatedTime)  ;;
  }

  dimension: dangerous_goods_indicator {
    type: string
    description: "Alphanumeric key that uniquely identifies the dangerous goods profile"
    sql: ${TABLE}.DangerousGoodsIndicator ;;
  }

  dimension: deactivated {
    type: string
    description: "Deactivated"
    sql: ${TABLE}.Deactivated ;;
  }

  dimension_group: deletion {
    type: time
    description: "Date on which the material is to be deleted. This is the latest possible date of all \"TO-dates\" referring to the material"
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
    sql: ${TABLE}.DeletionDate ;;
  }

  dimension: deletion_flag {
    type: string
    description: "Flag Material for Deletion at Client Level"
    sql: ${TABLE}.DeletionFlag ;;
  }

  dimension: dimension {
    type: string
    description: "Text field that you can use as you like, for example, to record the size or dimensions of the  material. The data you enter is merely for information and is not used by the system"
    sql: ${TABLE}.Dimension ;;
  }

  dimension: division {
    type: string
    description: "A way of grouping materials, products or services. The system uses divisions to determine the  sales areas and the business areas for a material, product or service"
    sql: ${TABLE}.Division ;;
  }

  dimension: ean {
    label: "EAN"
    type: string
    description: "Defines how the system determines an International Article Number(EAN) to be assigned internally, and which check criteria an EAN of this category must fulfil"
    sql: ${TABLE}.EAN ;;
  }

  dimension: gross_weight {
    group_label: "Material Size"
    type: number
    description: "Gross Weight expressed in the unit of weight specified in the Unit of Weight field"
    sql: ${TABLE}.GrossWeight ;;
  }

  dimension: height {
    group_label: "Material Size"
    type: number
    description: "Height of the material or its packaging, measured in the unit of dimension"
    sql: ${TABLE}.Height ;;
  }

  dimension: industry_sector {
    type: string
    description: "Key that specifies the branch of industry to which the material is assigned"
    sql: ${TABLE}.IndustrySector ;;
  }

  dimension: international_article_number {
    type: string
    description: "International Article Number (EAN/UPC)"
    sql: ${TABLE}.InternationalArticleNumber ;;
  }

  dimension: inventory_number {
    type: string
    description: "Number of firm's own (internal) inventory-managed material"
    sql: ${TABLE}.InventoryNumber ;;
  }

  dimension: label_form {
    group_label: "Label"
    type: string
    description: "Determines the size and layout of the label. The label form specifies, whether the label is an adhesive or a pin-on label"
    sql: ${TABLE}.LabelForm ;;
  }

  dimension: label_type {
    group_label: "Label"
    type: string
    description: "Determines the way labels are created. The label type specifies, whether labels are preprinted by the supplier or created on a central printer"
    sql: ${TABLE}.LabelType ;;
  }

  dimension_group: last_changed {
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
    sql: ${TABLE}.LastChanged ;;
  }

  dimension: length {
    group_label: "Material Size"
    type: number
    description: "Length of the material or its packaging, measured in the unit of dimension"
    sql: ${TABLE}.Length ;;
  }

  dimension: maint_status {
    label: "Maintain Status"
    type: string
    description: "Which user Department may maintain a material master record of a particular material type"
    sql: ${TABLE}.MaintStatus ;;
  }

  dimension: manufacturer_profile {
    type: string
    description: "Defines how you can work with MPN materials in the procurement process"
    sql: ${TABLE}.ManufacturerProfile ;;
  }

  dimension: material {
    primary_key: yes
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

  dimension: material_discount {
    type: string
    description: "Specifies whether and for what areas the material qualifies for a discount in kind"
    sql: ${TABLE}.MaterialDiscount ;;
  }

  dimension: material_group {
    type: string
    description: "Key that you use to group together several materials or services with the same attributes, and to assign them to a particular material group"
    sql: ${TABLE}.MaterialGroup ;;
  }

  dimension: material_number {
    type: string
    description: "Number of the drawing that exists for this Material"
    sql: ${TABLE}.MaterialNumber ;;
  }

  dimension: material_type {
    type: string
    description: "Subdivides the documents into groups that are subject to the same Organizational processes"
    sql: ${TABLE}.MaterialType ;;
  }

  dimension: net_contents {
    type: number
    description: "The basic price is calculated on the basis of the net contents"
    sql: ${TABLE}.NetContents ;;
  }

  dimension: net_weight {
    group_label: "Material Size"
    type: number
    description: "Net Weight expressed in the unit of weight specified in the Unit of Weight field"
    sql: ${TABLE}.NetWeight ;;
  }

  dimension: old_material_number {
    type: string
    description: "Reference Number under which you have managed the material so far or still manage it"
    sql: ${TABLE}.OldMaterialNumber ;;
  }

  dimension: package_mat_group {
    type: string
    description: "Material Group: Packaging Materials"
    sql: ${TABLE}.PackageMatGroup ;;
  }

  dimension: price_unit {
    type: number
    description: "Number of Units of Measure in the content unit to which the comparison price relates"
    sql: ${TABLE}.PriceUnit ;;
  }

  dimension: prod_memo_page_format {
    type: string
    description: "Page format of the material's production or inspection memo"
    sql: ${TABLE}.ProdMemoPageFormat ;;
  }

  dimension: product_hierarchy {
    type: string
    description: "Alphanumeric character string for grouping together materials by combining different characteristics. It is used for analysis and price determination"
    sql: ${TABLE}.ProductHierarchy ;;
  }

  dimension: production_memo {
    type: string
    description: "Number under which you have stored a production or inspection memo for the material"
    sql: ${TABLE}.ProductionMemo ;;
  }

  dimension: purchase_order_unitof_measure {
    type: string
    description: "Specifies the Unit of Measure in which the material is ordered"
    sql: ${TABLE}.PurchaseOrderUnitofMeasure ;;
  }

  dimension: season_year {
    type: string
    description: "Specifies the Season Year in which the material is sold for the first time"
    sql: ${TABLE}.SeasonYear ;;
  }

  dimension: stock_transfer_costing {
    type: string
    description: "This indicator allows information on usage to be collected with net change costing when special procurement types are being used"
    sql: ${TABLE}.StockTransferCosting ;;
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

  dimension: viscous_indicator {
    type: string
    description: "Indicator that shows if the material is a highly viscous substance"
    sql: ${TABLE}.ViscousIndicator ;;
  }

  dimension: volume {
    group_label: "Material Size"
    type: number
    description: "Space that the material occupies per unit of volume. The volume refers to the unit specified in the \"Volume unit\" field"
    sql: ${TABLE}.Volume ;;
  }

  dimension: volume_unit {
    group_label: "Material Size"
    type: string
    description: "Unit referring to the volume of the material"
    sql: ${TABLE}.VolumeUnit ;;
  }

  dimension: weight_unit {
    group_label: "Material Size"
    type: string
    description: "Unit referring to the gross weight or net weight of the material"
    sql: ${TABLE}.WeightUnit ;;
  }

  dimension: width {
    group_label: "Material Size"
    type: number
    description: "Width of the material or its packaging, measured in the unit of dimension"
    sql: ${TABLE}.Width ;;
  }

  measure: count {
    label: "Number of Materials"
    type: count
  }

  measure: average_width {
    type: average
    sql: ${width} ;;
  }

  measure: average_volume {
    type: average
    sql: ${volume} ;;
  }

  measure: average_height {
    type: average
    sql: ${height} ;;
  }

  measure: average_gross_weight {
    type: average
    sql: ${gross_weight} ;;
  }
}
