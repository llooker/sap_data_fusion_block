view: material_inventory {
  sql_table_name: `@{PROJECT}.@{FACT_DATASET}.material_inventory_fact` ;;

    dimension: client {
      type: string
      description: "SAP Process internal reference field"
      sql: ${TABLE}.Client ;;
    }

    dimension: deletion_flag_valuation_type {
      type: string
      description: "Indicator which flags all data of a material of a particular valuation type for deletion.The reorganization program checks whether the deletion is allowed and deletes the data if applicable."
      sql: ${TABLE}.DeletionFlagValuationType ;;
    }

    dimension: material_number {
      type: string
      description: "Alphanumeric key uniquely identifying the material"
      sql: ${TABLE}.MaterialNumber ;;
    }

    dimension: moving_average_price {
      type: number
      description: "Price of the material. This can be one of the following: Moving average price Periodic unit price (only if the material ledger is activated for the material)"
      sql: ${TABLE}.MovingAveragePrice ;;
    }

    dimension: price_control_indicator {
      type: string
      description: "Indicates the price control used to valuate the stock of a material. You have the following options: Standard price Moving average price"
      sql: ${TABLE}.PriceControlIndicator ;;
    }

    dimension: price_unit {
      type: number
      description: "Number of units to which the price refers."
      sql: ${TABLE}.PriceUnit ;;
    }

    dimension: standard_price {
      type: number
      description: "Standard price of the material.The valuation of material stocks at standard prices means that all goods movements are valuated at the same price over an extended period."
      sql: ${TABLE}.StandardPrice ;;
    }

    dimension: total_valuated_stock {
      type: number
      description: "Total of all valuated stocks of the material that are subject to the same valuation criteria. The valuation criteria are the valuation area and the valuation type."
      sql: ${TABLE}.TotalValuatedStock ;;
    }

    dimension: valuation_area {
      type: string
      description: "Organizational level at which the material is valuated. A valuation area can be one of the following: Plant All plants belonging to a company code, in which case the valuation area is the company code."
      sql: ${TABLE}.ValuationArea ;;
    }

    dimension: valuation_type {
      type: string
      description: "The valuation types allowed for a material are determined by the valuation category."
      sql: ${TABLE}.ValuationType ;;
    }

    dimension: value_of_total_valuated_stock {
      type: number
      description: "The value of all valuated stocks of the material that are subject to the same valuation criteria. The valuation criteria are the valuation area and the valuation type.This value is posted to the assigned balance sheet account in financial accounting."
      sql: ${TABLE}.ValueOfTotalValuatedStock ;;
    }

    measure: count {
      type: count
      drill_fields: []
    }

# New Created Measures

    measure: total_inventory_quantity_in_buom {
      type: sum
      sql: ${total_valuated_stock} ;;
    }

    measure: total_inventory_value {
      type: sum
      sql: ${value_of_total_valuated_stock} ;;
    }
  }
