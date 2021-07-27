view: forecast_fact {
  sql_table_name: `@{PROJECT}.@{FACT_DATASET}.forecast_fact`
    ;;

  dimension: base_unit_of_measure {
    type: string
    sql: ${TABLE}.BaseUnitOfMeasure ;;
  }

  dimension: date_type {
    type: string
    sql: ${TABLE}.DateType ;;
  }

  dimension: deletion_indicator {
    type: string
    sql: ${TABLE}.DeletionIndicator ;;
  }

  dimension_group: delivery_order_finish {
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
    sql: ${TABLE}.DeliveryOrderFinishDate ;;
  }

  dimension_group: forecast_dt {
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
    sql: ${TABLE}.ForcastDate ;;
  }

  dimension_group: forecast_tm {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ForecastTime ;;
  }

  dimension: independent_requirements_pointer {
    type: string
    sql: ${TABLE}.IndependentRequirementsPointer ;;
  }

  dimension: material_number {
    type: string
    sql: ${TABLE}.MaterialNumber ;;
  }

  dimension: mrpplanning_scenario {
    type: string
    sql: ${TABLE}.MRPPlanningScenario ;;
  }

  dimension: planned_quantity {
    type: number
    sql: ${TABLE}.PlannedQuantity ;;
  }

  dimension: planning_indicator {
    type: string
    sql: ${TABLE}.PlanningIndicator ;;
  }

  dimension: planning_period {
    type: string
    sql: ${TABLE}.PlanningPeriod ;;
  }

  dimension: plant {
    type: string
    sql: ${TABLE}.Plant ;;
  }

  dimension: requirements_plan {
    type: string
    sql: ${TABLE}.RequirementsPlan ;;
  }

  dimension: requirements_type {
    type: string
    sql: ${TABLE}.RequirementsType ;;
  }

  dimension: version1 {
    type: string
    sql: ${TABLE}.Version1 ;;
  }

  dimension: version2 {
    type: string
    sql: ${TABLE}.Version2 ;;
  }

  dimension: version_active_indicator {
    type: string
    sql: ${TABLE}.VersionActiveIndicator ;;
  }

  dimension: version_number {
    type: string
    sql: ${TABLE}.VersionNumber ;;
  }

  dimension: without_mrp {
    type: string
    sql: ${TABLE}.WithoutMRP ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  #New Measures
  measure: forecast_quantity_sum {
    type: sum
    drill_fields: []
    sql: ${forecast_fact.planned_quantity} ;;
  }

}
