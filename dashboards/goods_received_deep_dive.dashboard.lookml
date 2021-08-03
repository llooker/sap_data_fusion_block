- dashboard: goods_received_deep_dive
  title: Goods Received Deep Dive
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Goods Received Value
    name: Goods Received Value
    model: sap
    explore: goods_received
    type: looker_area
    fields: [goods_received.total_gr_amount, goods_received.posting_year, materials.material_group]
    pivots: [goods_received.posting_year]
    fill_fields: [goods_received.posting_year]
    sorts: [goods_received.total_gr_amount desc 0, goods_received.posting_year]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: goods_received.total_gr_amount,
            id: 2017 - goods_received.total_gr_amount, name: '2017'}, {axisId: goods_received.total_gr_amount,
            id: 2018 - goods_received.total_gr_amount, name: '2018'}, {axisId: goods_received.total_gr_amount,
            id: 2019 - goods_received.total_gr_amount, name: '2019'}, {axisId: goods_received.total_gr_amount,
            id: 2020 - goods_received.total_gr_amount, name: '2020'}], showLabels: false,
        showValues: true, valueFormat: "$0.0,,\\M\\", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 2
    col: 0
    width: 12
    height: 8
  - title: Goods Received Quantity
    name: Goods Received Quantity
    model: sap
    explore: goods_received
    type: looker_column
    fields: [goods_received.posting_year, goods_received.total_gr_quantity, materials.material_group]
    pivots: [goods_received.posting_year]
    fill_fields: [goods_received.posting_year]
    sorts: [goods_received.posting_year, goods_received.total_gr_quantity desc 0]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: 2017 - goods_received.total_gr_amount,
            id: 2017 - goods_received.total_gr_amount, name: '2017'}, {axisId: 2018
              - goods_received.total_gr_amount, id: 2018 - goods_received.total_gr_amount,
            name: '2018'}, {axisId: 2019 - goods_received.total_gr_amount, id: 2019
              - goods_received.total_gr_amount, name: '2019'}, {axisId: 2020 - goods_received.total_gr_amount,
            id: 2020 - goods_received.total_gr_amount, name: '2020'}], showLabels: false,
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
  - name: Materials
    type: text
    title_text: Materials
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
