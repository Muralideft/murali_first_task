view: Customer_PDT {
  derived_table: {
    datagroup_trigger: bqml_datagroup
    sql_create:
      CREATE OR REPLACE MODEL ${EXTENDED}}
      OPTIONS(model_type='logistic_reg'
        , labels=['will_purchase_in_future']
        , min_rel_progress = 0.005
        , max_iterations = 40
        ) AS
      SELECT
         * EXCEPT(fullVisitorId, visitId)
      FROM ${EXTENDED}};;
  }

  derived_table: {
    sql:
      SELECT *
      FROM order

    sql_trigger_value: SELECT MAX(order.id) ;;
  }
}
