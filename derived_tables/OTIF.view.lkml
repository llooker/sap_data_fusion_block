view: OTIF {
  derived_table: {
    sql:
      SELECT CAST(SalesOrderNumber as STRING) AS SalesOrderNumber, CASE WHEN LateDeliveryCnt > 0 THEN 'N' ELSE 'Y' END AS OTIF
      FROM (

      SELECT
        SalesOrderNumber,
        SUM(CASE WHEN DeliveryQuantity = CumulativeOrderQuantityInSalesUnit
AND ActiveGoodsMovementDate= RequestedDeliveryDate  THEN 0 ELSE 1 END ) AS LateDeliveryCnt
      FROM
       `@{PROJECT}.@{FACT_DATASET}.sales_order_delivery_fact`
      GROUP BY
        SalesOrderNumber
        )
      ;;
  }
  dimension: SalesOrderNumber {
    type: string
    primary_key: yes
    sql: ${TABLE}.SalesOrderNumber ;;
  }


  dimension: OTIF {
    type: string
    sql: ${TABLE}.OTIF ;;
  }


}
