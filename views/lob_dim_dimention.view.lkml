# The name of this view in Looker is "Lob Dim Dimention"
view: lob_dim_dimention {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `adhoc_data_march.lob_dim_dimention`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Lob Cd" in Explore.

  dimension: lob_cd {
    type: string
    sql: ${TABLE}.lob_cd ;;
  }

  dimension: lob_lvl1_des {
    type: string
    sql: ${TABLE}.lob_lvl1_des ;;
  }

  dimension: lob_lvl2_des {
    type: string
    sql: ${TABLE}.lob_lvl2_des ;;
  }

  dimension: lob_lvl3_des {
    type: string
    sql: ${TABLE}.lob_lvl3_des ;;
  }

  dimension: lob_sk {
    type: number
    sql: ${TABLE}.lob_sk ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_lob_sk {
    type: sum
    sql: ${lob_sk} ;;
  }

  measure: average_lob_sk {
    type: average
    sql: ${lob_sk} ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
