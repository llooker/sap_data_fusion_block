view: date_dimension {
  sql_table_name: `@{PROJECT}.@{FACT_DATASET}.date_dimension`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }

  dimension: day_is_weekday {
    type: number
    sql: ${TABLE}.day_is_weekday ;;
  }

  dimension: day_name {
    type: string
    sql: ${TABLE}.day_name ;;
  }

  dimension: fiscal_qtr {
    type: string
    sql: ${TABLE}.fiscal_qtr ;;
  }

  dimension: fiscal_year {
    type: number
    sql: ${TABLE}.fiscal_year ;;
  }

  dimension_group: full {
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
    sql: ${TABLE}.full_date ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: month_name {
    type: string
    sql: ${TABLE}.month_name ;;
  }

  dimension: qtr {
    type: string
    sql: ${TABLE}.qtr ;;
  }

  dimension: week {
    type: string
    sql: ${TABLE}.week ;;
  }

  dimension: week_day {
    type: string
    sql: ${TABLE}.week_day ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: year_month {
    type: string
    sql: ${TABLE}.year_month ;;
  }

  dimension: year_qtr {
    type: string
    sql: ${TABLE}.year_qtr ;;
  }

  dimension: year_week {
    type: string
    sql: ${TABLE}.year_week ;;
  }

  measure: count {
    type: count
    drill_fields: [id, month_name, day_name]
  }
}
