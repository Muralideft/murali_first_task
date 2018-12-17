- dashboard: First_Lookml_Dashboard
  title: Lookml Dashboard
  layout: tile
  tile_size: 100

  filters:

  elements:
    - name: Total_Orders
      label: Total Orders
      model : thelook
      explore: order_items
      type: single_value
      fields :
      - order_items.order_count
      sorts :
      - order_items.order_count desc
      limit : 50
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



