- dashboard: purchase_order_deep_dive
  title: Purchase Order Deep Dive
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Purchase Order Value
    name: Purchase Order Value
    model: sap
    explore: purchase_order
    type: looker_area
    fields: [purchase_order.total_po_amount, purchase_order.date_on_which_the_record_was_created_year,
      suppliers.vendor_name]
    pivots: [purchase_order.date_on_which_the_record_was_created_year]
    fill_fields: [purchase_order.date_on_which_the_record_was_created_year]
    sorts: [purchase_order.date_on_which_the_record_was_created_year, suppliers.vendor_name
        desc]
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
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: purchase_order.total_po_amount,
            id: 2017 - purchase_order.total_po_amount, name: '2017'}, {axisId: purchase_order.total_po_amount,
            id: 2018 - purchase_order.total_po_amount, name: '2018'}, {axisId: purchase_order.total_po_amount,
            id: 2019 - purchase_order.total_po_amount, name: '2019'}, {axisId: purchase_order.total_po_amount,
            id: 2020 - purchase_order.total_po_amount, name: '2020'}, {axisId: purchase_order.total_po_amount,
            id: 2021 - purchase_order.total_po_amount, name: '2021'}], showLabels: false,
        showValues: true, valueFormat: "$0.0,,\\M\\", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen: {}
    row: 2
    col: 0
    width: 12
    height: 8
  - name: Materials
    type: text
    title_text: Materials
    subtitle_text: ''
    body_text: ''
    row: 16
    col: 0
    width: 24
    height: 2
  - name: Suppliers
    type: text
    title_text: Suppliers
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Purchase Order Quantity
    name: Purchase Order Quantity
    model: sap
    explore: purchase_order
    type: looker_column
    fields: [purchase_order.date_on_which_the_record_was_created_year, purchase_order.total_po_quantity,
      suppliers.vendor_name]
    pivots: [purchase_order.date_on_which_the_record_was_created_year]
    fill_fields: [purchase_order.date_on_which_the_record_was_created_year]
    sorts: [purchase_order.date_on_which_the_record_was_created_year, suppliers.vendor_name
        desc]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: 2017 - purchase_order.total_po_quantity,
            id: 2017 - purchase_order.total_po_quantity, name: '2017'}, {axisId: 2018
              - purchase_order.total_po_quantity, id: 2018 - purchase_order.total_po_quantity,
            name: '2018'}, {axisId: 2019 - purchase_order.total_po_quantity, id: 2019
              - purchase_order.total_po_quantity, name: '2019'}, {axisId: 2020 - purchase_order.total_po_quantity,
            id: 2020 - purchase_order.total_po_quantity, name: '2020'}, {axisId: 2021
              - purchase_order.total_po_quantity, id: 2021 - purchase_order.total_po_quantity,
            name: '2021'}], showLabels: false, showValues: true, maxValue: 100000,
        minValue: 0, valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    show_null_points: true
    interpolation: monotone
    defaults_version: 1
    listen: {}
    row: 2
    col: 12
    width: 12
    height: 8
  - title: Purchase Order Returns
    name: Purchase Order Returns
    model: sap
    explore: purchase_order
    type: looker_grid
    fields: [purchase_order.total_po_line_item_returns_quantity, purchase_order.po_return_value,
      purchase_order.date_on_which_the_record_was_created_year, purchase_order.date_on_which_the_record_was_created_month_name,
      suppliers.vendor_name]
    sorts: [purchase_order.date_on_which_the_record_was_created_year desc]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      purchase_order.total_po_line_item_returns_quantity:
        is_active: true
      purchase_order.po_return_value:
        is_active: true
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 10
    col: 0
    width: 24
    height: 6
  - title: Purchase Order Value
    name: Purchase Order Value (2)
    model: sap
    explore: purchase_order
    type: looker_area
    fields: [purchase_order.total_po_amount, purchase_order.date_on_which_the_record_was_created_year,
      materials.material_group]
    pivots: [purchase_order.date_on_which_the_record_was_created_year]
    fill_fields: [purchase_order.date_on_which_the_record_was_created_year]
    sorts: [purchase_order.date_on_which_the_record_was_created_year, purchase_order.total_po_amount
        desc 0]
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
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: purchase_order.total_po_amount,
            id: 2017 - purchase_order.total_po_amount, name: '2017'}, {axisId: purchase_order.total_po_amount,
            id: 2018 - purchase_order.total_po_amount, name: '2018'}, {axisId: purchase_order.total_po_amount,
            id: 2019 - purchase_order.total_po_amount, name: '2019'}, {axisId: purchase_order.total_po_amount,
            id: 2020 - purchase_order.total_po_amount, name: '2020'}, {axisId: purchase_order.total_po_amount,
            id: 2021 - purchase_order.total_po_amount, name: '2021'}], showLabels: false,
        showValues: true, valueFormat: "$0.0,,\\M\\", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen: {}
    row: 18
    col: 0
    width: 12
    height: 8
  - title: Purchase Order Quantity
    name: Purchase Order Quantity (2)
    model: sap
    explore: purchase_order
    type: looker_column
    fields: [purchase_order.date_on_which_the_record_was_created_year, purchase_order.total_po_quantity,
      materials.material_group]
    pivots: [purchase_order.date_on_which_the_record_was_created_year]
    fill_fields: [purchase_order.date_on_which_the_record_was_created_year]
    sorts: [purchase_order.date_on_which_the_record_was_created_year, purchase_order.total_po_quantity
        desc 0]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: 2017 - purchase_order.total_po_quantity,
            id: 2017 - purchase_order.total_po_quantity, name: '2017'}, {axisId: 2018
              - purchase_order.total_po_quantity, id: 2018 - purchase_order.total_po_quantity,
            name: '2018'}, {axisId: 2019 - purchase_order.total_po_quantity, id: 2019
              - purchase_order.total_po_quantity, name: '2019'}, {axisId: 2020 - purchase_order.total_po_quantity,
            id: 2020 - purchase_order.total_po_quantity, name: '2020'}, {axisId: 2021
              - purchase_order.total_po_quantity, id: 2021 - purchase_order.total_po_quantity,
            name: '2021'}], showLabels: false, showValues: true, maxValue: 100000,
        minValue: 0, valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    show_null_points: true
    interpolation: monotone
    defaults_version: 1
    listen: {}
    row: 18
    col: 12
    width: 12
    height: 8
  - title: Purchase Order Returns
    name: Purchase Order Returns (2)
    model: sap
    explore: purchase_order
    type: looker_grid
    fields: [purchase_order.date_on_which_the_record_was_created_year, purchase_order.date_on_which_the_record_was_created_month_name,
      purchase_order.total_po_line_item_returns_quantity, purchase_order.po_return_value,
      materials.material_group, materials.material]
    sorts: [purchase_order.date_on_which_the_record_was_created_year desc]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      purchase_order.total_po_line_item_returns_quantity:
        is_active: true
      purchase_order.po_return_value:
        is_active: true
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 26
    col: 0
    width: 24
    height: 6
