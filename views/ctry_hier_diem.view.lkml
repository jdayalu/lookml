# The name of this view in Looker is "Ctry Hier Diem"
view: ctry_hier_diem {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `adhoc_data_march.ctry_hier_diem`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Corp Ccy Cd" in Explore.

  dimension: corp_ccy_cd {
    type: string
    sql: ${TABLE}.corp_ccy_cd ;;
  }

  dimension: ctry_cd {
    type: string
    sql: ${TABLE}.ctry_cd ;;
  }

  dimension: ctry_grp_desc {
    type: string
    sql: ${TABLE}.ctry_grp_desc ;;
  }

  dimension: ctry_grp_mgr {
    type: string
    sql: ${TABLE}.ctry_grp_mgr ;;
  }

  dimension: ctry_name {
    type: string
    sql: ${TABLE}.ctry_name ;;
  }

  dimension: ctry_sk {
    type: number
    sql: ${TABLE}.ctry_sk ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_ctry_sk {
    type: sum
    sql: ${ctry_sk} ;;
  }

  measure: average_ctry_sk {
    type: average
    sql: ${ctry_sk} ;;
  }

  dimension: op_co_cd {
    type: string
    sql: ${TABLE}.op_co_cd ;;
  }

  dimension: op_co_desc {
    type: string
    sql: ${TABLE}.op_co_desc ;;
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

  dimension: src_sys_cd {
    type: string
    sql: ${TABLE}.src_sys_cd ;;
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

  dimension: src_sys_desc {
    type: string
    sql: ${TABLE}.src_sys_desc ;;
  }

  dimension: sub_src_sys_cd {
    type: string
    sql: ${TABLE}.sub_src_sys_cd ;;
  }

  dimension: sub_src_sys_desc {
    type: string
    sql: ${TABLE}.sub_src_sys_desc ;;
  }

  measure: count {
    type: count
    drill_fields: [ctry_name]
  }
}
