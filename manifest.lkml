project_name: "sap_data_fusion"

constant: PROJECT {
  value: "sap-adapter"
  export: override_optional
}

constant: DIMENSION_DATASET {
  value: "p2p_sap_cdf_dimensions"
  export: override_optional
}

constant: FACT_DATASET {
  value: "p2p_sap_cdf_facts"
  export: override_optional
}

constant: CONNECTION {
  value: "looker_bq"
  export: override_optional
}
