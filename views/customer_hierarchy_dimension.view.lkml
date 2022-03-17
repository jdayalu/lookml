# The name of this view in Looker is "Customer Hierarchy Dimension"
view: customer_hierarchy_dimension {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `adhoc_data_march.customer_hierarchy_dimension`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cust Name" in Explore.

  dimension: cust_name {
    type: string
    sql: ${TABLE}.cust_name ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.cust_nbr ;;
  }

  dimension: cust_sub_role {
    type: string
    sql: ${TABLE}.cust_sub_role ;;
  }

  dimension: cust_sub_sub_role {
    type: string
    sql: ${TABLE}.cust_sub_sub_role ;;
  }

  dimension: cust_sub_sub_role_sgmt {
    type: string
    sql: ${TABLE}.cust_sub_sub_role_sgmt ;;
  }

  dimension: cust_sub_sub_role_sub_sgmt {
    type: string
    sql: ${TABLE}.cust_sub_sub_role_sub_sgmt ;;
  }

  dimension: cust_sub_sub_role_sub_sgmt_sk {
    type: number
    sql: ${TABLE}.cust_sub_sub_role_sub_sgmt_sk ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cust_sub_sub_role_sub_sgmt_sk {
    type: sum
    sql: ${cust_sub_sub_role_sub_sgmt_sk} ;;
  }

  measure: average_cust_sub_sub_role_sub_sgmt_sk {
    type: average
    sql: ${cust_sub_sub_role_sub_sgmt_sk} ;;
  }

  dimension: op_co_cd {
    type: string
    sql: ${TABLE}.op_co_cd ;;
  }

  dimension: rec_clos_dt {
    type: string
    sql: ${TABLE}.rec_clos_dt ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: rec_crt_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.rec_crt_dt ;;
  }

  dimension: src_sys_clos_dt {
    type: string
    sql: ${TABLE}.src_sys_clos_dt ;;
  }

  dimension_group: src_sys_crt_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.src_sys_crt_dt ;;
  }

  dimension: sub_src_sys_cd {
    type: string
    sql: ${TABLE}.sub_src_sys_cd ;;
  }

  measure: count {
    type: count
    drill_fields: [cust_name]
  }
}
