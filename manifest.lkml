project_name: "sap_data_fusion"

constant: PROJECT {
  value: "sap-adapter"
  export: override_optional
}

constant: DIMENSION_DATASET {
  value: "sap_cdf_dimensions"
  export: override_optional
}

constant: FACT_DATASET {
  value: "sap_cdf_facts"
  export: override_optional
}

constant: CONNECTION {
  value: "sap-adapter"
  export: override_optional
}
