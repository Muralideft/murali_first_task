view: Customer_PDT {

  derived_table: {
    sql:
      SELECT *
      FROM order

    sql_trigger_value: SELECT MAX(order.id) ;;
  }
}
