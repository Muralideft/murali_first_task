view: Customer_PDT {
  derived_table: {
    datagroup_trigger: murali_first_task_default_datagroup
    sql_create:
      CREATE OR REPLACE MODEL order111
       AS
      (SELECT
         *
      FROM order);;
  }
}
