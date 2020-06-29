- dashboard: a_break
  title: a_break
  layout: newspaper
  elements:
  - name: New Tile
    title: New Tile
    merged_queries:
    - model: sarah_repro_usethisone2
      explore: order_items
      type: table
      fields: [order_items.id, order_items.inventory_item_id, order_items.count]
      sorts: [order_items.count desc]
      limit: 500
      query_timezone: America/Los_Angeles
    - model: sarah_repro_usethisone2
      explore: order_items
      type: table
      fields: [order_items.sale_price, order_items.id, order_items.order_id]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: order_items.id
        source_field_name: order_items.id
    type: table
    row: 0
    col: 0
    width: 8
    height: 6
