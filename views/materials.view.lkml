view: materials {
  sql_table_name: `sap-adapter.sap_cdf_dimensions.material_dimension`;;

  dimension: authorization_group {
    type: string
    sql: ${TABLE}.AuthorizationGroup ;;
  }

  dimension: base_unitof_measure {
    type: string
    sql: ${TABLE}.BaseUnitofMeasure ;;
  }

  dimension: changed_by {
    type: string
    sql: ${TABLE}.ChangedBy ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.Client ;;
  }

  dimension: competitor {
    type: string
    sql: ${TABLE}.Competitor ;;
  }

  dimension: completion_status {
    type: string
    sql: ${TABLE}.CompletionStatus ;;
  }

  dimension: container_requirements {
    type: string
    sql: ${TABLE}.ContainerRequirements ;;
  }

  dimension: content_unit {
    type: string
    sql: ${TABLE}.ContentUnit ;;
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

  # dimension_group: created {
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
  #   sql: ${TABLE}.CreatedTime ;;
  # }

  dimension: dangerous_goods_indicator {
    type: string
    sql: ${TABLE}.DangerousGoodsIndicator ;;
  }

  dimension: deactivated {
    type: string
    sql: ${TABLE}.Deactivated ;;
  }

  dimension_group: deletion {
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
    sql: ${TABLE}.DeletionDate ;;
  }

  dimension: deletion_flag {
    type: string
    sql: ${TABLE}.DeletionFlag ;;
  }

  dimension: dimension {
    type: string
    sql: ${TABLE}.Dimension ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }

  dimension: ean {
    type: string
    sql: ${TABLE}.EAN ;;
  }

  dimension: gross_weight {
    type: number
    sql: ${TABLE}.GrossWeight ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.Height ;;
  }

  dimension: industry_sector {
    type: string
    sql: ${TABLE}.IndustrySector ;;
  }

  dimension: international_article_number {
    type: string
    sql: ${TABLE}.InternationalArticleNumber ;;
  }

  dimension: inventory_number {
    type: string
    sql: ${TABLE}.InventoryNumber ;;
  }

  dimension: label_form {
    type: string
    sql: ${TABLE}.LabelForm ;;
  }

  dimension: label_type {
    type: string
    sql: ${TABLE}.LabelType ;;
  }

  dimension_group: last_changed {
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
    sql: ${TABLE}.LastChanged ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.Length ;;
  }

  dimension: maint_status {
    type: string
    sql: ${TABLE}.MaintStatus ;;
  }

  dimension: manufacturer_profile {
    type: string
    sql: ${TABLE}.ManufacturerProfile ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.Material ;;
  }

  dimension: material_category {
    type: string
    sql: ${TABLE}.MaterialCategory ;;
  }

  dimension: material_co_product_indicator {
    type: string
    sql: ${TABLE}.MaterialCoProductIndicator ;;
  }

  dimension: material_discount {
    type: string
    sql: ${TABLE}.MaterialDiscount ;;
  }

  dimension: material_group {
    type: string
    sql: ${TABLE}.MaterialGroup ;;
  }

  dimension: material_number {
    type: string
    sql: ${TABLE}.MaterialNumber ;;
  }

  dimension: material_type {
    type: string
    sql: ${TABLE}.MaterialType ;;
  }

  dimension: net_contents {
    type: number
    sql: ${TABLE}.NetContents ;;
  }

  dimension: net_weight {
    type: number
    sql: ${TABLE}.NetWeight ;;
  }

  dimension: old_material_number {
    type: string
    sql: ${TABLE}.OldMaterialNumber ;;
  }

  dimension: package_mat_group {
    type: string
    sql: ${TABLE}.PackageMatGroup ;;
  }

  dimension: price_unit {
    type: number
    sql: ${TABLE}.PriceUnit ;;
  }

  dimension: prod_memo_page_format {
    type: string
    sql: ${TABLE}.ProdMemoPageFormat ;;
  }

  dimension: product_hierarchy {
    type: string
    sql: ${TABLE}.ProductHierarchy ;;
  }

  dimension: production_memo {
    type: string
    sql: ${TABLE}.ProductionMemo ;;
  }

  dimension: purchase_order_unitof_measure {
    type: string
    sql: ${TABLE}.PurchaseOrderUnitofMeasure ;;
  }

  dimension: season_year {
    type: string
    sql: ${TABLE}.SeasonYear ;;
  }

  dimension: stock_transfer_costing {
    type: string
    sql: ${TABLE}.StockTransferCosting ;;
  }

  dimension: storage_conditions {
    type: string
    sql: ${TABLE}.StorageConditions ;;
  }

  dimension: unit_of_dimension {
    type: string
    sql: ${TABLE}.UnitOfDimension ;;
  }

  dimension_group: valid_from {
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
    sql: ${TABLE}.ValidFromDate ;;
  }

  dimension: viscous_indicator {
    type: string
    sql: ${TABLE}.ViscousIndicator ;;
  }

  dimension: volume {
    type: number
    sql: ${TABLE}.Volume ;;
  }

  dimension: volume_unit {
    type: string
    sql: ${TABLE}.VolumeUnit ;;
  }

  dimension: weight_unit {
    type: string
    sql: ${TABLE}.WeightUnit ;;
  }

  dimension: width {
    type: number
    sql: ${TABLE}.Width ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
