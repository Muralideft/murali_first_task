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
      fields: [order_item.count]
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


