- dashboard: order_to_cash
  title: Order to Cash
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Orders
    name: Orders
    model: sap
    explore: orders
    type: single_value
    fields: [orders.count, orders.total_quantity]
    limit: 2
    dynamic_fields: [{_kind_hint: measure, table_calculation: percent_change, _type_hint: number,
        category: table_calculation, description: '', expression: "(${orders.count}-offset(${orders.count},-1))/if(is_null(offset(${orders.count},-1)),0,offset(${orders.count},-1))",
        label: Percent Change, value_format: !!null '', value_format_name: percent_1,
        is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Total Quantity
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    listen:
      Created Date: orders.created_date
    row: 2
    col: 0
    width: 4
    height: 4
  - title: Total Net Sales
    name: Total Net Sales
    model: sap
    explore: revenue
    type: single_value
    fields: [revenue.total_net_sales_after_discount, revenue.percent_discount]
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
    value_format: "$0.0,,\\M\\"
    comparison_label: Discount
    defaults_version: 1
    hidden_fields: []
    listen: {}
    row: 2
    col: 4
    width: 4
    height: 4
  - title: Net Sales YoY
    name: Net Sales YoY
    model: sap
    explore: revenue
    type: looker_line
    fields: [revenue.total_net_sales_after_discount, revenue.payment_posting_month_name,
      revenue.payment_posting_year]
    pivots: [revenue.payment_posting_year]
    fill_fields: [revenue.payment_posting_year]
    filters:
      revenue.payment_posting_month_name: "-EMPTY"
    sorts: [revenue.payment_posting_year, revenue.payment_posting_month_name]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: revenue.total_net_sales_after_discount,
            id: 2016 - revenue.total_net_sales_after_discount, name: '2016'}, {axisId: revenue.total_net_sales_after_discount,
            id: 2017 - revenue.total_net_sales_after_discount, name: '2017'}, {axisId: revenue.total_net_sales_after_discount,
            id: 2018 - revenue.total_net_sales_after_discount, name: '2018'}, {axisId: revenue.total_net_sales_after_discount,
            id: 2019 - revenue.total_net_sales_after_discount, name: '2019'}, {axisId: revenue.total_net_sales_after_discount,
            id: 2020 - revenue.total_net_sales_after_discount, name: '2020'}, {axisId: revenue.total_net_sales_after_discount,
            id: 2021 - revenue.total_net_sales_after_discount, name: '2021'}], showLabels: false,
        showValues: true, valueFormat: "$0,,\\M\\", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    discontinuous_nulls: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 2
    col: 16
    width: 8
    height: 10
  - title: Average Net Price per Order
    name: Average Net Price per Order
    model: sap
    explore: orders
    type: single_value
    fields: [orders.average_net_price, orders.average_quantity]
    limit: 2
    dynamic_fields: [{_kind_hint: measure, table_calculation: percent_change, _type_hint: number,
        category: table_calculation, description: '', expression: "(${orders.count}-offset(${orders.count},-1))/if(is_null(offset(${orders.count},-1)),0,offset(${orders.count},-1))",
        label: Percent Change, value_format: !!null '', value_format_name: percent_1,
        is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "$0.00,\\K\\"
    comparison_label: Avg Quantity
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    listen:
      Created Date: orders.created_date
    row: 2
    col: 8
    width: 4
    height: 4
  - name: Top Line Metrics
    type: text
    title_text: Top Line Metrics
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Orders by Material Category
    name: Orders by Material Category
    model: sap
    explore: orders
    type: looker_area
    fields: [orders.created_date, orders.count, orders.material_group]
    pivots: [orders.material_group]
    fill_fields: [orders.created_date]
    filters: {}
    sorts: [orders.created_date desc, orders.material_group]
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
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    defaults_version: 1
    listen:
      Created Date: orders.created_date
    row: 6
    col: 0
    width: 16
    height: 6
  - name: Product & Supplier Breakdown
    type: text
    title_text: Product & Supplier Breakdown
    subtitle_text: ''
    body_text: ''
    row: 12
    col: 0
    width: 24
    height: 3
  - title: Orders by Sales Office
    name: Orders by Sales Office
    model: sap
    explore: orders
    type: looker_area
    fields: [orders.created_date, orders.count, orders.sales_office]
    pivots: [orders.sales_office]
    fill_fields: [orders.created_date]
    filters: {}
    sorts: [orders.created_date desc, orders.sales_office]
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
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    defaults_version: 1
    listen:
      Created Date: orders.created_date
    row: 25
    col: 0
    width: 15
    height: 6
  - name: Sales & Customer Breakdown
    type: text
    title_text: Sales & Customer Breakdown
    subtitle_text: ''
    body_text: ''
    row: 23
    col: 0
    width: 24
    height: 2
  - title: High Value Customers
    name: High Value Customers
    model: sap
    explore: orders
    type: looker_grid
    fields: [customers.customer_number, customers.customer_name, orders.total_net_price,
      orders.total_quantity, orders.count, orders.percent_rejected]
    filters: {}
    sorts: [orders.total_net_price desc]
    limit: 15
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
    show_totals: true
    show_row_totals: true
    series_labels:
      orders.count: Orders
      orders.total_quantity: Quantity
      orders.total_net_price: Net Price
      customers.customer_name: Customer
    series_cell_visualizations:
      orders.total_net_price:
        is_active: true
        palette:
          palette_id: 838d072d-d42e-927c-2d97-e6f4a04920b3
          collection_id: google
          custom_colors:
          - "#ffffff"
          - "#34A853"
    x_axis_gridlines: false
    y_axis_gridlines: false
    y_axes: [{label: '', orientation: left, series: [{axisId: orders.count, id: 1010
              - orders.count, name: '1010'}, {axisId: orders.count, id: 1710 - orders.count,
            name: '1710'}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Created Date: orders.created_date
    row: 31
    col: 0
    width: 15
    height: 7
  - title: Net Sales by State
    name: Net Sales by State
    model: sap
    explore: orders
    type: looker_map
    fields: [orders.total_net_price, customers.region]
    sorts: [orders.total_net_price desc]
    limit: 500
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
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
    quantize_map_value_colors: true
    reverse_map_value_colors: false
    map_latitude: 36.94989178681327
    map_longitude: -96.767578125
    map_zoom: 3
    map_value_colors: ["#34A853", "#FBBC04", "#EA4335"]
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    defaults_version: 1
    listen:
      Created Date: orders.created_date
    row: 25
    col: 15
    width: 9
    height: 6
  - title: Orders by Account Group
    name: Orders by Account Group
    model: sap
    explore: orders
    type: looker_column
    fields: [orders.total_quantity, customers.account_group, orders.total_net_price]
    sorts: [orders.total_quantity]
    limit: 500
    column_limit: 50
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
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: orders.total_quantity,
            id: orders.total_quantity, name: Total Quantity}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: orders.total_net_price,
            id: orders.total_net_price, name: Total Net Price}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types:
      orders.total_net_price: line
    series_colors:
      orders.total_net_price: "#FBBC04"
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    defaults_version: 1
    listen:
      Created Date: orders.created_date
    row: 31
    col: 15
    width: 9
    height: 7
  - title: Percent Orders Rejected
    name: Percent Orders Rejected
    model: sap
    explore: orders
    type: single_value
    fields: [orders.percent_rejected, orders.count_rejected]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Orders Rejected
    conditional_formatting: [{type: greater than, value: 0.05, background_color: '',
        font_color: "#EA4335", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Created Date: orders.created_date
    row: 2
    col: 12
    width: 4
    height: 4
  - title: Materials with Highest Return Freq
    name: Materials with Highest Return Freq
    model: sap
    explore: orders
    type: looker_column
    fields: [orders.percent_rejected, materials.material, orders.total_net_price]
    sorts: [orders.percent_rejected desc]
    limit: 15
    column_limit: 50
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
    y_axes: [{label: !!null '', orientation: top, series: [{axisId: orders.total_net_price,
            id: orders.total_net_price, name: Total Net Price}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: '', orientation: bottom, series: [{axisId: orders.percent_rejected,
            id: orders.percent_rejected, name: Percent Rejected}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types:
      orders.percent_rejected: line
    series_colors:
      orders.percent_rejected: "#EA4335"
      orders.total_net_price: "#FBBC04"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Orders Rejected
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Created Date: orders.created_date
    row: 15
    col: 0
    width: 16
    height: 8
  - title: Revenue by Manufacturer
    name: Revenue by Manufacturer
    model: sap
    explore: revenue
    type: looker_bar
    fields: [revenue.total_gross_sales, revenue.total_net_sales_after_discount, revenue.total_net_sales_before_discount,
      materials.manufacturer_profile]
    sorts: [revenue.total_gross_sales desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: revenue.total_gross_sales,
            id: revenue.total_gross_sales, name: Total Gross Sales}, {axisId: revenue.total_net_sales_after_discount,
            id: revenue.total_net_sales_after_discount, name: Total Net Sales After
              Discount}, {axisId: revenue.total_net_sales_before_discount, id: revenue.total_net_sales_before_discount,
            name: Total Net Sales Before Discount}], showLabels: true, showValues: true,
        valueFormat: "$0,,\\M\\", unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types:
      revenue.total_net_sales_after_discount: line
      revenue.total_net_sales_before_discount: line
    series_colors:
      revenue.total_gross_sales: "#4285F4"
      revenue.total_net_sales_before_discount: "#FBBC04"
    defaults_version: 1
    listen: {}
    row: 15
    col: 16
    width: 8
    height: 8
  filters:
  - name: Created Date
    title: Created Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: inline
      options: []
    model: sap
    explore: orders
    listens_to_filters: []
    field: orders.created_date
