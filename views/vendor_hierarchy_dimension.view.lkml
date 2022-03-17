# The name of this view in Looker is "Vendor Hierarchy Dimension"
view: vendor_hierarchy_dimension {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `adhoc_data_march.vendor_hierarchy_dimension`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Op Co Cd" in Explore.

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

  dimension_group: src_sys_clos_dt {
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

  dimension: vend_cd {
    type: string
    sql: ${TABLE}.vend_cd ;;
  }

  dimension: vend_grp {
    type: string
    sql: ${TABLE}.vend_grp ;;
  }

  dimension: vend_sub_grp {
    type: string
    sql: ${TABLE}.vend_sub_grp ;;
  }

  dimension: vend_sub_grp_sk {
    type: number
    sql: ${TABLE}.vend_sub_grp_sk ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_vend_sub_grp_sk {
    type: sum
    sql: ${vend_sub_grp_sk} ;;
  }

  measure: average_vend_sub_grp_sk {
    type: average
    sql: ${vend_sub_grp_sk} ;;
  }

  dimension: vend_sup_grp {
    type: string
    sql: ${TABLE}.vend_sup_grp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
