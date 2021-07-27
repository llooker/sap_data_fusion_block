- dashboard: scm_dashboard
  title: SCM Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: 'Order by Customer '
    name: 'Order by Customer '
    model: sap
    explore: sales_order_delivery_fact
    type: looker_grid
    fields: [sales_order_delivery_fact.quantity_fill_rate, sales_order_delivery_fact.line_fill_rate,
      materials.material_group, plant.plant, sales_order_delivery_fact.delivered_quantity,
      sales_order_delivery_fact.required_quantity, sales_order_delivery_fact.requested_delivery_date,
      sales_order_delivery_fact.active_goods_movement_date]
    sorts: [sales_order_delivery_fact.line_fill_rate desc]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", plant.plant, materials.material_group, sales_order_delivery_fact.requested_delivery_date,
      sales_order_delivery_fact.active_goods_movement_date, sales_order_delivery_fact.delivered_quantity,
      sales_order_delivery_fact.required_quantity, sales_order_delivery_fact.order_fill_rate,
      sales_order_delivery_fact.quantity_fill_rate, sales_order_delivery_fact.line_fill_rate]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      sales_order_delivery_fact.quantity_fill_rate:
        is_active: true
      sales_order_delivery_fact.required_quantity:
        is_active: true
      sales_order_delivery_fact.line_fill_rate:
        is_active: true
        value_display: true
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
    row: 10
    col: 0
    width: 24
    height: 7
  - title: Untitled
    name: Untitled
    model: sap
    explore: sales_order_delivery_fact
    type: single_value
    fields: [sales_order_delivery_fact.current_total_value, sales_order_delivery_fact.value_diff]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Value
    value_format: "$0.0,,\\M\\"
    comparison_label: Value vs Last Year
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 5
    height: 4
  - title: Untitled (Copy 2)
    name: Untitled (Copy 2)
    model: sap
    explore: sales_order_delivery_fact
    type: single_value
    fields: [sales_order_delivery_fact.order_fill_rate]
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
    single_value_title: Order Fill Rate
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    row: 0
    col: 10
    width: 5
    height: 4
  - title: Untitled (Copy)
    name: Untitled (Copy)
    model: sap
    explore: sales_order_delivery_fact
    type: single_value
    fields: [sales_order_delivery_fact.required_quantity, sales_order_delivery_fact.delivered_quantity]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Orders
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    row: 0
    col: 5
    width: 5
    height: 4
  - title: Year over year Fulfillment Trend
    name: Year over year Fulfillment Trend
    model: sap
    explore: sales_order_delivery_fact
    type: looker_line
    fields: [sales_order_delivery_fact.active_goods_movement_year, sales_order_delivery_fact.order_fill_rate,
      sales_order_delivery_fact.active_goods_movement_month_name]
    pivots: [sales_order_delivery_fact.active_goods_movement_year]
    fill_fields: [sales_order_delivery_fact.active_goods_movement_month_name, sales_order_delivery_fact.active_goods_movement_year]
    filters:
      sales_order_delivery_fact.active_goods_movement_year: NOT NULL
    sorts: [sales_order_delivery_fact.active_goods_movement_year, sales_order_delivery_fact.active_goods_movement_month_name]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 4
    col: 0
    width: 13
    height: 6
  - title: Untitled (Copy 4)
    name: Untitled (Copy 4)
    model: sap
    explore: sales_order_delivery_fact
    type: single_value
    fields: [sales_order_delivery_fact.quantity_fill_rate]
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
    single_value_title: Qty Fill Rate
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    row: 0
    col: 19
    width: 5
    height: 4
  - title: Untitled (Copy 3)
    name: Untitled (Copy 3)
    model: sap
    explore: sales_order_delivery_fact
    type: single_value
    fields: [sales_order_delivery_fact.line_fill_rate]
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
    single_value_title: Line Fill Rate
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    row: 0
    col: 15
    width: 4
    height: 4
  - title: Fulfillment by Location
    name: Fulfillment by Location
    model: sap
    explore: sales_order_delivery_fact
    type: looker_map
    fields: [plant.region, sales_order_delivery_fact.total_value]
    sorts: [sales_order_delivery_fact.total_value desc]
    limit: 500
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light_no_labels
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 4
    col: 13
    width: 11
    height: 6
