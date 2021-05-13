- dashboard: customer_deep_dive
  title: Customer Deep Dive
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
      Customer Number: customers.customer_number
      Order Date: orders.created_date
    row: 3
    col: 0
    width: 5
    height: 4
  - title: Net Sales
    name: Net Sales
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
    listen:
      Customer Number: customers.customer_number
    row: 3
    col: 5
    width: 5
    height: 4
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
      Customer Number: customers.customer_number
      Order Date: orders.created_date
    row: 3
    col: 10
    width: 5
    height: 4
  - title: Most Frequently Ordered Materials
    name: Most Frequently Ordered Materials
    model: sap
    explore: orders
    type: looker_grid
    fields: [materials.material, orders.total_quantity, orders.average_net_price,
      orders.total_net_price, orders.total_net_value]
    sorts: [orders.total_quantity desc]
    limit: 500
    column_limit: 50
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
    listen:
      Customer Number: customers.customer_number
      Order Date: orders.created_date
    row: 7
    col: 0
    width: 15
    height: 5
  - title: Orders by Delivery Status
    name: Orders by Delivery Status
    model: sap
    explore: orders
    type: looker_pie
    fields: [orders.delivery_status, orders.count]
    sorts: [orders.delivery_status]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    series_types: {}
    defaults_version: 1
    listen:
      Customer Number: customers.customer_number
      Order Date: orders.created_date
    row: 3
    col: 15
    width: 9
    height: 9
  - title: Revenue Over Time
    name: Revenue Over Time
    model: sap
    explore: revenue
    type: looker_line
    fields: [revenue.payment_posting_date, revenue.total_gross_sales, revenue.total_discount,
      revenue.total_net_sales_after_discount]
    fill_fields: [revenue.payment_posting_date]
    filters:
      revenue.payment_posting_date: 6 months
    sorts: [revenue.payment_posting_date desc]
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: revenue.total_gross_sales,
            id: revenue.total_gross_sales, name: Total Gross Sales}, {axisId: revenue.total_net_sales_after_discount,
            id: revenue.total_net_sales_after_discount, name: Total Net Sales After
              Discount}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: revenue.total_discount, id: revenue.total_discount, name: Total
              Discount}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types:
      revenue.total_gross_sales: column
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Customer Number: customers.customer_number
    row: 12
    col: 0
    width: 24
    height: 7
  - name: Customer Deep Dive
    type: text
    title_text: Customer Deep Dive
    subtitle_text: Filter on a specific customer to get insights into their behavior
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 3
  filters:
  - name: Customer Number
    title: Customer Number
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: sap
    explore: orders
    listens_to_filters: []
    field: customers.customer_number
  - name: Order Date
    title: Order Date
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
