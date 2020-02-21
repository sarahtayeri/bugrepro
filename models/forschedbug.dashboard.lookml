- dashboard: for_schedbug
  title: for_schedbug
  layout: newspaper
  elements:
  - title: w
    name: w
    model: sarah_repro_usethisone2
    explore: order_items
    type: table
    fields: [order_items.id, order_items.order_id, order_items.count]
    sorts: [order_items.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 0
    col: 0
    width: 8
    height: 6
