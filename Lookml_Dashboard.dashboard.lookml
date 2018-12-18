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
