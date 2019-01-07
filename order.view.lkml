view: order {
  sql_table_name: dbo."Order" ;;
parameter:  Id{default_value:"8"}

  measure: count1 {
    type: count
    drill_fields: [order_year]
    html:
    <a href="#drillmenu" target="_self">
      {% if value > 278 %}
        <font color="#42a338 ">{{ rendered_value }}</font>
      {% elsif value > 153  %}
        <font color="#0000ff">{{ rendered_value }}</font>
      {% elsif value > 0 %}
        <font color="#FF0000">{{ rendered_value }}</font>
      {% endif %}
    </a>;;
  }
  dimension: id {
    primary_key: yes

    type: number
    sql: ${TABLE}.Id ;;

  }
  dimension: product_image {
    sql: ${customer_id} ;;
    html: <img src=”https://www.google.com/search?q=defteam+image&rlz=1C1GCEA_enIN804IN804&tbm=isch&source=iu&ictx=1&fir=m5bwOgi18p-QhM%253A%252CQlXUijHGwdxnxM%252C_&usg=AI4_-kT_cAqphmOA0yOegAQwVHD97n5uDA&sa=X&ved=2ahUKEwidhfed09HfAhULVH0KHfunA5AQ9QEwAnoECAAQCA#imgrc=m5bwOgi18p-QhM:” /> ;;
  }
  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CustomerId ;;
  }

  dimension_group: order {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.OrderDate ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}.OrderNumber ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.TotalAmount ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customer.id, customer.first_name, customer.last_name, order_item.count]
  }


  measure: category_count {
    type: number
    sql:
    CASE
      WHEN ${id} = {% parameter category_to_count %}
      THEN ${id}

    END
  ;;
  }

  filter: category_to_count {
    type: string
  }
  measure: total_order_amount {
    type: sum
    sql: ${total_amount} ;;
    value_format: "0.00"
    html:
    <ul>
      <li> value: {{ value }} </li>
      <li> rendered_value: {{ rendered_value }} </li>
      <li> linked_value: {{ linked_value }} </li>
      <li> link: {{ link }} </li>
      <li> model: {{ thelook }} </li>
      <li> view: {{ orders}} </li>
      <li> explore: {{ order_items }} </li>
      <li> field: {{ total_order_amount}} </li>
      <li> dialect: {{ _dialect._name }} </li>
      <li> access filter: {{ _access_filters['company.name'] }} </li>
      <li> user attribute: {{ _user_attributes['region'] }} </li>
      <li> query timezone: {{ _query._query_timezone }} </li>
      <li> filters: {{ _filters['order.total_order_amount'] }} </li>
    </ul> ;;
  }



}
