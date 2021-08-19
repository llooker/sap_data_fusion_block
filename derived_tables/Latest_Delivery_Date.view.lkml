view: ldd {
  derived_table: {
    sql:

      SELECT
      MAX(ActiveGoodsMovementDate) as Latest_Delivery_Date
      FROM
       `@{PROJECT}.@{FACT_DATASET}.sales_order_delivery_fact`


      ;;
  }
  dimension: latest_delivery_date {
    type: date
    primary_key: yes
    sql: ${TABLE}.Latest_Delivery_Date ;;
  }


}
