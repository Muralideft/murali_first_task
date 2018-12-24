- dashboard: First_Lookml_Dashboard
  title: Lookml Dashboard
  layout: tile
  tile_size: 100

  filters:

  elements:
    - name: Total_Orders
      label: Total Orders
      model : murali_first_task
      explore: order_item
      type: table
      fields:  [order.customer_id, order.id, order.total_amount, order.order_number, order.count]
      limit: 500
      query_timezone: Asia/Kolkata
      sorts :
      - order_items.order_count desc
      font_size : medium
      colors:
      - "#64518A"
      - "#8D7FB9"
      - "#EA8A2F"
      - "#F2B431"
      - "#20A5DE"
      - "#57BEBE"
      - "#7F7977"
      - "#B2A898"
      - "#49AC52"
      color_palette : Default

    - name: Total_Orders2
      label: Total Orders2
      view_name: Test
      model : murali_first_task
      explore: order_item
      type: table
      fields:  [order.customer_id, order.id, order.total_amount, order.order_number, order.count]
      limit: 500
      query_timezone: Asia/Kolkata
      sorts :
      - order_items.order_count desc
      font_size : medium
      colors:
      - "#64518A"
      - "#8D7FB9"
      - "#EA8A2F"
      - "#F2B431"
      - "#20A5DE"
      - "#57BEBE"
      - "#7F7977"
      - "#B2A898"
      - "#49AC52"
      color_palette : Default
    - name: Test
      title: Untitled Visualization
      model: murali_first_task
      explore: order
      type: looker_bar
      fields: [order.customer_id, order.id, order.order_number, order.total_amount, order.count]
      sorts: [order.id desc]
      limit: 50
      query_timezone: Asia/Kolkata
      show_view_names: true
      show_row_numbers: true
      truncate_column_names: false
      subtotals_at_bottom: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      limit_displayed_rows: true
      limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
      enable_conditional_formatting: true
      conditional_formatting: [{type: high to low, value: !!null '', background_color: !!null '',
      font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_sequential1},
      bold: false, italic: false, strikethrough: false, fields: !!null ''}]
      conditional_formatting_include_totals: true
      conditional_formatting_include_nulls: false
      series_types: {}
