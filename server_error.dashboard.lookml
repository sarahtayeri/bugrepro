- dashboard: server_error
  title: server_error
  layout: newspaper
  elements:


  - title: dash tile 1
    name: dash tile 1
    model: sarah_repro_usethisone2
    explore: order_items
    type: looker_bar
    fields: [users.state, users.first_name, users.count]
    pivots: [users.state]
    filters:
      users.state: California,New York,Alaska
    sorts: [users.count desc 0, users.state]
    limit: 50
    query_timezone: America/Los_Angeles
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
    series_types: {}
    series_colors:
      Alaska - users.count: "#EF5350"
      California - users.count: "#FFCA28"
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      my new filter: orders.id
    row: 0
    col: 8
    width: 8
    height: 6


  filters:

  # if you uncomment the following filter and try to save, it will throw the error because of the extra tab in front of the "title" line (could be an extra tab in front of any line though)


#   - name: my new filter
#       title: my new filter
#     type: field_filter
#     default_value: '1'
#     allow_multiple_values: true
#     required: false
#     model: sarah_repro_usethisone2
#     explore: orders
#     listens_to_filters: []
#     field: orders.id
