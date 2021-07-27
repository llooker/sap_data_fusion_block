- dashboard: supplier_deep_dive
  title: Supplier Deep Dive
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Invoice Net Value
    name: Invoice Net Value
    model: sap
    explore: supplier_invoice
    type: looker_area
    fields: [supplier_invoice.total_invoice_amount, suppliers.vendor_name, supplier_invoice.posting_year]
    pivots: [supplier_invoice.posting_year]
    fill_fields: [supplier_invoice.posting_year]
    sorts: [supplier_invoice.posting_year, suppliers.vendor_name desc]
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: supplier_invoice.total_invoice_amount,
            id: 2017 - supplier_invoice.total_invoice_amount, name: '2017'}, {axisId: supplier_invoice.total_invoice_amount,
            id: 2018 - supplier_invoice.total_invoice_amount, name: '2018'}, {axisId: supplier_invoice.total_invoice_amount,
            id: 2019 - supplier_invoice.total_invoice_amount, name: '2019'}, {axisId: supplier_invoice.total_invoice_amount,
            id: 2020 - supplier_invoice.total_invoice_amount, name: '2020'}], showLabels: false,
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
  - title: Invoice Quantity
    name: Invoice Quantity
    model: sap
    explore: supplier_invoice
    type: looker_column
    fields: [suppliers.vendor_name, supplier_invoice.posting_year, supplier_invoice.total_invoice_quantity]
    pivots: [supplier_invoice.posting_year]
    fill_fields: [supplier_invoice.posting_year]
    sorts: [supplier_invoice.posting_year, suppliers.vendor_name desc]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: supplier_invoice.total_invoice_quantity,
            id: 2017 - supplier_invoice.total_invoice_quantity, name: '2017'}, {axisId: supplier_invoice.total_invoice_quantity,
            id: 2018 - supplier_invoice.total_invoice_quantity, name: '2018'}, {axisId: supplier_invoice.total_invoice_quantity,
            id: 2019 - supplier_invoice.total_invoice_quantity, name: '2019'}, {axisId: supplier_invoice.total_invoice_quantity,
            id: 2020 - supplier_invoice.total_invoice_quantity, name: '2020'}], showLabels: false,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 2
    col: 12
    width: 12
    height: 8
  - name: Suppliers
    type: text
    title_text: Suppliers
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - name: Materials
    type: text
    title_text: Materials
    subtitle_text: ''
    body_text: ''
    row: 10
    col: 0
    width: 24
    height: 2
  - title: Invoice Net Value
    name: Invoice Net Value (2)
    model: sap
    explore: supplier_invoice
    type: looker_area
    fields: [supplier_invoice.total_invoice_amount, supplier_invoice.posting_year,
      materials.material_group]
    pivots: [supplier_invoice.posting_year]
    fill_fields: [supplier_invoice.posting_year]
    sorts: [supplier_invoice.posting_year, materials.material_group desc]
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: supplier_invoice.total_invoice_amount,
            id: 2017 - supplier_invoice.total_invoice_amount, name: '2017'}, {axisId: supplier_invoice.total_invoice_amount,
            id: 2018 - supplier_invoice.total_invoice_amount, name: '2018'}, {axisId: supplier_invoice.total_invoice_amount,
            id: 2019 - supplier_invoice.total_invoice_amount, name: '2019'}, {axisId: supplier_invoice.total_invoice_amount,
            id: 2020 - supplier_invoice.total_invoice_amount, name: '2020'}], showLabels: false,
        showValues: true, valueFormat: "$0.0,,\\M\\", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen: {}
    row: 12
    col: 0
    width: 12
    height: 8
  - title: Invoice Quantity
    name: Invoice Quantity (2)
    model: sap
    explore: supplier_invoice
    type: looker_column
    fields: [supplier_invoice.posting_year, supplier_invoice.total_invoice_quantity,
      materials.material_group]
    pivots: [supplier_invoice.posting_year]
    fill_fields: [supplier_invoice.posting_year]
    sorts: [supplier_invoice.posting_year, materials.material_group desc]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: supplier_invoice.total_invoice_quantity,
            id: 2017 - supplier_invoice.total_invoice_quantity, name: '2017'}, {axisId: supplier_invoice.total_invoice_quantity,
            id: 2018 - supplier_invoice.total_invoice_quantity, name: '2018'}, {axisId: supplier_invoice.total_invoice_quantity,
            id: 2019 - supplier_invoice.total_invoice_quantity, name: '2019'}, {axisId: supplier_invoice.total_invoice_quantity,
            id: 2020 - supplier_invoice.total_invoice_quantity, name: '2020'}], showLabels: false,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 12
    col: 12
    width: 12
    height: 8
