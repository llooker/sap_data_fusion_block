view: plant {
  sql_table_name: `@{PROJECT}.@{DIMENSION_DATASET}.plant_dimension` ;;

  dimension: activating_requirements_planning {
    type: string
    sql: ${TABLE}.ActivatingRequirementsPlanning ;;
  }

  dimension: actual_costing {
    type: string
    sql: ${TABLE}.ActualCosting ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: batch_status_management1_indicator {
    type: string
    sql: ${TABLE}.BatchStatusManagement1Indicator ;;
  }

  dimension: business_place {
    type: string
    sql: ${TABLE}.BusinessPlace ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: citycode {
    type: string
    sql: ${TABLE}.Citycode ;;
  }

  dimension: conditions_at_plant_level_indicator {
    type: string
    sql: ${TABLE}.ConditionsAtPlantLevelIndicator ;;
  }

  dimension: country_key {
    type: string
    sql: ${TABLE}.CountryKey ;;
  }

  dimension: county_code {
    type: string
    sql: ${TABLE}.CountyCode ;;
  }

  dimension: customer_number_plant {
    type: string
    sql: ${TABLE}.CustomerNumberPlant ;;
  }

  dimension: description_of_purchasing_organization {
    type: string
    sql: ${TABLE}.DescriptionOfPurchasingOrganization ;;
  }

  dimension: distribution_channel_for_intercompany_billing {
    type: string
    sql: ${TABLE}.DistributionChannelForIntercompanyBilling ;;
  }

  dimension: factory_calendar {
    type: string
    sql: ${TABLE}.FactoryCalendar ;;
  }

  dimension: maintenance_planning_plant {
    type: string
    sql: ${TABLE}.MaintenancePlanningPlant ;;
  }

  dimension: mixed_costing {
    type: string
    sql: ${TABLE}.MixedCosting ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: name2 {
    type: string
    sql: ${TABLE}.Name2 ;;
  }

  dimension: plant {
    type: string
    sql: ${TABLE}.Plant ;;
  }

  dimension: plant_category {
    type: string
    sql: ${TABLE}.PlantCategory ;;
  }

  dimension: purchasing_organization {
    type: string
    sql: ${TABLE}.PurchasingOrganization ;;
  }

  dimension: region {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.Region ;;
  }

  dimension: sales_district {
    type: string
    sql: ${TABLE}.SalesDistrict ;;
  }

  dimension: sales_organization_for_intercompany_billing {
    type: string
    sql: ${TABLE}.SalesOrganizationForIntercompanyBilling ;;
  }

  dimension: shipping_point_receiving_point {
    type: string
    sql: ${TABLE}.ShippingPointReceivingPoint ;;
  }

  dimension: source_list_requirement_indicator {
    type: string
    sql: ${TABLE}.SourceListRequirementIndicator ;;
  }

  dimension: street_and_house_number {
    type: string
    sql: ${TABLE}.StreetAndHouseNumber ;;
  }

  dimension: superior_department_store {
    type: string
    sql: ${TABLE}.SuperiorDepartmentStore ;;
  }

  dimension: supplier_number_plant {
    type: string
    sql: ${TABLE}.SupplierNumberPlant ;;
  }

  dimension: tax_jurisdiction {
    type: string
    sql: ${TABLE}.TaxJurisdiction ;;
  }

  dimension: valuation_area {
    type: string
    sql: ${TABLE}.ValuationArea ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
