view: forecast_fact_month {
  derived_table: {
    sql:
      SELECT
        MaterialNumber as material,
        Plant as plant,
        DATE_TRUNC(date(DeliveryOrderFinishDate), month) as forecast_date_month,
        SUM(PlannedQuantity) AS planned_quantity_month
      FROM
         `@{PROJECT}.@{FACT_DATASET}.forecast_fact`
      GROUP BY
        MaterialNumber,
        Plant,
        DATE_TRUNC(date(DeliveryOrderFinishDate), month) ;;
  }
  dimension: prim_key {
    type: string
    primary_key: yes
    sql: concat(${TABLE}.material,${TABLE}.plant,${TABLE}.forecast_date_month) ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.material ;;
  }

  dimension: plant {
    type: string
    sql: ${TABLE}.plant ;;
  }

  dimension: forecast_date_month {
    type: date
    sql: ${TABLE}.forecast_date_month ;;
  }

  dimension: planned_quantity_month {
    type: number
    sql: ${TABLE}.planned_quantity_month ;;
  }

  measure: planned_quantity_sum {
    type: sum
    drill_fields: []
    sql: ${planned_quantity_month} ;;
  }

}
