view: sales_order_schedule_fact_month {
  derived_table: {
    sql:
      SELECT
        material,
        plant,
        DATE_TRUNC(date(RequestedDeliveryDate), month) as delivery_date_month,
        SUM(OrderQuantity) AS order_quantity_month
      FROM
       `@{PROJECT}.@{FACT_DATASET}.sales_order_schedule_fact`
      GROUP BY
        Material,
        Plant,
        DATE_TRUNC(date(RequestedDeliveryDate), month) ;;
  }
  dimension: prim_key {
    type: string
    primary_key: yes
    sql: concat(${TABLE}.material,${TABLE}.plant,${TABLE}.delivery_date_month) ;;
  }


  dimension: material {
    type: string
    sql: ${TABLE}.Material ;;
  }

  dimension: plant {
    type: string
    sql: ${TABLE}.Plant ;;
  }

  dimension: delivery_date_month {
    type: date
    sql: ${TABLE}.delivery_date_month ;;
  }

  dimension: order_quantity_month {
    type: number
    sql: ${TABLE}.order_quantity_month ;;
  }






  #New measures and dimensions

  measure: order_quantity_sum {
    type: sum
    drill_fields: []
    sql: ${order_quantity_month} ;;
  }

  measure: APE {
    type: number
    drill_fields: []
    value_format:"#.00%;(#.00%)"
    sql: CASE WHEN ${order_quantity_sum} <= 0 THEN --A <=0
           CASE WHEN ${forecast_fact_month.planned_quantity_sum} = 0 THEN 0 ELSE 1 END -- IF(F=0,0,1)
           ELSE ABS((${forecast_fact_month.planned_quantity_sum}-${order_quantity_sum})/${order_quantity_sum})
        END   ;;
  }

}
