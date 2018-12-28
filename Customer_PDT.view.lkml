view: Customer_PDT {
  derived_table: {
    datagroup_trigger: murali_first_task_default_datagroup
    sql_create:
      CREATE OR REPLACE MODEL order
      OPTIONS(model_type='logistic_reg'
        , labels=['will_purchase_in_future']
        , min_rel_progress = 0.005
        , max_iterations = 40
        ) AS
      SELECT
         *
      FROM order;;
  }
}
