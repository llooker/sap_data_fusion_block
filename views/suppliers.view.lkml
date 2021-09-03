view: suppliers {
  sql_table_name: `@{PROJECT}.@{DIMENSION_DATASET}.supplier_dimension`
  ;;

    dimension: address {
      type: string
      description: "Identification of an address (name, postal code, city, and so on) in Business Address Services."
      sql: ${TABLE}.Address ;;
    }

    dimension: city {
      type: string
      description: "Name of the city as a part of the address."
      sql: ${TABLE}.City ;;
    }

    dimension: country_key {
      type: string
      description: "Here you specify the country key for the customer or vendor."
      sql: ${TABLE}.CountryKey ;;
    }

    dimension: postal_code {
      type: string
      description: "Postal code This field contains the postal (zip) code for the house address (street and city)."
      sql: ${TABLE}.PostalCode ;;
    }

    dimension: region {
      type: string
      description: "In some countries, the region forms part of the address. The meaning depends on the country. The automatic address formatting function prints the region in addresses in the USA, Canada, Italy, Brazil or Australia, and the county in Great Britain. For more information, see the examples in the documentation on the Address Layout Key."
      sql: ${TABLE}.Region ;;
    }

    dimension: sort_field {
      type: string
      description: "Short name which is used to set up a matchcode."
      sql: ${TABLE}.SortField ;;
    }

    dimension: street_and_house_number {
      type: string
      description: "Street and house number as part of the address."
      sql: ${TABLE}.StreetAndHouseNumber ;;
    }

    dimension: vendor_account_number {
      primary_key: yes
      type: string
      description: "Specifies an alphanumeric key that uniquely identifies the vendor in the SAP system."
      sql: ${TABLE}.VendorAccountNumber ;;
    }

    dimension: vendor_name {
      type: string
      description: "Name 1 of the customer/vendor address."
      sql: ${TABLE}.VendorName ;;
    }

    measure: count {
      type: count
      drill_fields: []
    }
  }
