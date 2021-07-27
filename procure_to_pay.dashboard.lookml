- dashboard: procure_to_pay
  title: Procure to Pay
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - name: Top Line Metrics
    type: text
    title_text: Top Line Metrics
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Untitled
    name: Untitled
    model: sap
    explore: purchase_order
    type: single_value
    fields: [purchase_order.total_po_amount]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: PO Value
    value_format: "$0.0,,\\M\\"
    defaults_version: 1
    row: 2
    col: 0
    width: 4
    height: 3
  - title: Untitled (Copy)
    name: Untitled (Copy)
    model: sap
    explore: purchase_order
    type: single_value
    fields: [purchase_order.total_po_quantity]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: PO Quantity
    value_format: ''
    defaults_version: 1
    row: 2
    col: 4
    width: 4
    height: 3
  - title: Untitled
    name: Untitled (2)
    model: sap
    explore: goods_received
    type: single_value
    fields: [goods_received.total_gr_amount]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: GR Value
    value_format: "$0.0,,\\M\\"
    defaults_version: 1
    row: 2
    col: 8
    width: 4
    height: 3
  - title: Untitled (Copy 2)
    name: Untitled (Copy 2)
    model: sap
    explore: goods_received
    type: single_value
    fields: [goods_received.total_gr_quantity]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: GR Quantity
    value_format: ''
    defaults_version: 1
    row: 2
    col: 12
    width: 4
    height: 3
  - title: Goods Received YoY
    name: Goods Received YoY
    model: sap
    explore: goods_received
    type: looker_line
    fields: [goods_received.posting_month_name, goods_received.posting_year, goods_received.count]
    pivots: [goods_received.posting_year]
    fill_fields: [goods_received.posting_month_name, goods_received.posting_year]
    sorts: [goods_received.posting_month_name, goods_received.posting_year]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: goods_received.count,
            id: 2017 - goods_received.count, name: '2017'}, {axisId: goods_received.count,
            id: 2018 - goods_received.count, name: '2018'}, {axisId: goods_received.count,
            id: 2019 - goods_received.count, name: '2019'}, {axisId: goods_received.count,
            id: 2020 - goods_received.count, name: '2020'}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    discontinuous_nulls: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row: 5
    col: 8
    width: 8
    height: 8
  - title: Purchase Order YoY
    name: Purchase Order YoY
    model: sap
    explore: purchase_order
    type: looker_line
    fields: [purchase_order.count, purchase_order.date_on_which_the_record_was_created_month_name,
      purchase_order.date_on_which_the_record_was_created_year]
    pivots: [purchase_order.date_on_which_the_record_was_created_year]
    fill_fields: [purchase_order.date_on_which_the_record_was_created_month_name,
      purchase_order.date_on_which_the_record_was_created_year]
    sorts: [purchase_order.date_on_which_the_record_was_created_year, purchase_order.date_on_which_the_record_was_created_month_name]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: purchase_order.count,
            id: 2017 - purchase_order.count, name: '2017'}, {axisId: purchase_order.count,
            id: 2018 - purchase_order.count, name: '2018'}, {axisId: purchase_order.count,
            id: 2019 - purchase_order.count, name: '2019'}, {axisId: purchase_order.count,
            id: 2020 - purchase_order.count, name: '2020'}, {axisId: purchase_order.count,
            id: 2021 - purchase_order.count, name: '2021'}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    discontinuous_nulls: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    defaults_version: 1
    row: 5
    col: 0
    width: 8
    height: 8
  - title: Untitled (Copy 3)
    name: Untitled (Copy 3)
    model: sap
    explore: supplier_invoice
    type: single_value
    fields: [supplier_invoice.total_invoice_quantity]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: IR Quantity
    value_format: ''
    defaults_version: 1
    row: 2
    col: 20
    width: 4
    height: 3
  - title: Untitled
    name: Untitled (3)
    model: sap
    explore: supplier_invoice
    type: single_value
    fields: [supplier_invoice.total_invoice_amount]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: IR Value
    value_format: "$0.0,,\\M\\"
    defaults_version: 1
    row: 2
    col: 16
    width: 4
    height: 3
  - title: Supplier Invoice YoY
    name: Supplier Invoice YoY
    model: sap
    explore: supplier_invoice
    type: looker_line
    fields: [supplier_invoice.count, supplier_invoice.posting_month_name, supplier_invoice.posting_year]
    pivots: [supplier_invoice.posting_year]
    fill_fields: [supplier_invoice.posting_month_name, supplier_invoice.posting_year]
    sorts: [supplier_invoice.posting_year, supplier_invoice.posting_month_name]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: supplier_invoice.count,
            id: 2017 - supplier_invoice.count, name: '2017'}, {axisId: supplier_invoice.count,
            id: 2018 - supplier_invoice.count, name: '2018'}, {axisId: supplier_invoice.count,
            id: 2019 - supplier_invoice.count, name: '2019'}, {axisId: supplier_invoice.count,
            id: 2020 - supplier_invoice.count, name: '2020'}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    discontinuous_nulls: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row: 5
    col: 16
    width: 8
    height: 8
  - name: Inventory Metrics
    type: text
    title_text: Inventory Metrics
    subtitle_text: ''
    body_text: ''
    row: 13
    col: 0
    width: 24
    height: 2
  - title: Inventory YoY
    name: Inventory YoY
    model: sap
    explore: material_inventory
    type: looker_line
    fields: [materials.date_month_name, materials.date_year, material_inventory.count]
    pivots: [materials.date_year]
    fill_fields: [materials.date_month_name, materials.date_year]
    sorts: [materials.date_year, materials.date_month_name]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: material_inventory.count,
            id: 2017 - material_inventory.count, name: '2017'}, {axisId: material_inventory.count,
            id: 2018 - material_inventory.count, name: '2018'}, {axisId: material_inventory.count,
            id: 2019 - material_inventory.count, name: '2019'}, {axisId: material_inventory.count,
            id: 2020 - material_inventory.count, name: '2020'}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    discontinuous_nulls: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 15
    col: 0
    width: 8
    height: 8
  - title: Inventory Value
    name: Inventory Value
    model: sap
    explore: material_inventory
    type: looker_column
    fields: [material_inventory.total_inventory_value, materials.material_group, materials.date_year]
    pivots: [materials.date_year]
    fill_fields: [materials.date_year]
    sorts: [material_inventory.total_inventory_value desc 0, materials.date_year]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: 2017 - material_inventory.total_inventory_value,
            id: 2017 - material_inventory.total_inventory_value, name: '2017'}, {
            axisId: 2018 - material_inventory.total_inventory_value, id: 2018 - material_inventory.total_inventory_value,
            name: '2018'}, {axisId: 2019 - material_inventory.total_inventory_value,
            id: 2019 - material_inventory.total_inventory_value, name: '2019'}, {
            axisId: 2020 - material_inventory.total_inventory_value, id: 2020 - material_inventory.total_inventory_value,
            name: '2020'}], showLabels: false, showValues: true, maxValue: 1000000,
        minValue: 0, valueFormat: "$0.0,\\K\\", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 15
    col: 8
    width: 8
    height: 8
  - title: Inventory Quantity
    name: Inventory Quantity
    model: sap
    explore: material_inventory
    type: looker_column
    fields: [material_inventory.total_inventory_quantity_in_buom, materials.material_group,
      materials.division]
    pivots: [materials.division]
    sorts: [material_inventory.total_inventory_quantity_in_buom desc 0, materials.division]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: material_inventory.total_inventory_quantity_in_buom,
            id: material_inventory.total_inventory_quantity_in_buom, name: Total Inventory
              Quantity In Buom}], showLabels: false, showValues: true, maxValue: 10000,
        minValue: 0, valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 15
    col: 16
    width: 8
    height: 8
  - title: Inventory Details
    name: Inventory Details
    model: sap
    explore: material_inventory
    type: looker_grid
    fields: [material_inventory.total_inventory_value, material_inventory.total_inventory_quantity_in_buom,
      materials.date_year, materials.date_month_name, materials.material_group, materials.material]
    sorts: [materials.date_year]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 23
    col: 0
    width: 24
    height: 5
