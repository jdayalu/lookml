# The name of this view in Looker is "Date Dimension"
view: date_dimension {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `adhoc_data_march.date_dimension`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Day Desc" in Explore.

  dimension: day_desc {
    type: string
    sql: ${TABLE}.day_desc ;;
  }

  dimension: day_of_mth_nbr {
    type: number
    sql: ${TABLE}.day_of_mth_nbr ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_day_of_mth_nbr {
    type: sum
    sql: ${day_of_mth_nbr} ;;
  }

  measure: average_day_of_mth_nbr {
    type: average
    sql: ${day_of_mth_nbr} ;;
  }

  dimension: day_of_week_nbr {
    type: number
    sql: ${TABLE}.day_of_week_nbr ;;
  }

  dimension: day_of_yr_nbr {
    type: number
    sql: ${TABLE}.day_of_yr_nbr ;;
  }

  dimension: dt_sk {
    type: number
    sql: ${TABLE}.dt_sk ;;
  }

  dimension: fisc_day_of_mth_nbr {
    type: number
    sql: ${TABLE}.fisc_day_of_mth_nbr ;;
  }

  dimension: fisc_day_of_qtr_nbr {
    type: number
    sql: ${TABLE}.fisc_day_of_qtr_nbr ;;
  }

  dimension: fisc_day_of_yr_nbr {
    type: number
    sql: ${TABLE}.fisc_day_of_yr_nbr ;;
  }

  dimension: fisc_mth_des {
    type: string
    sql: ${TABLE}.fisc_mth_des ;;
  }

  dimension: fisc_mth_nbr {
    type: number
    sql: ${TABLE}.fisc_mth_nbr ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fisc_mth_start_dt {
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
    sql: ${TABLE}.fisc_mth_start_dt ;;
  }

  dimension: fisc_per_cd {
    type: number
    sql: ${TABLE}.fisc_per_cd ;;
  }

  dimension: fisc_per_des {
    type: number
    sql: ${TABLE}.fisc_per_des ;;
  }

  dimension: fisc_qtr_nbr {
    type: number
    sql: ${TABLE}.fisc_qtr_nbr ;;
  }

  dimension_group: fisc_qtr_start_dt {
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
    sql: ${TABLE}.fisc_qtr_start_dt ;;
  }

  dimension: fisc_week_of_mth_nbr {
    type: number
    sql: ${TABLE}.fisc_week_of_mth_nbr ;;
  }

  dimension: fisc_week_of_qtr_nbr {
    type: number
    sql: ${TABLE}.fisc_week_of_qtr_nbr ;;
  }

  dimension: fisc_week_of_yr_nbr {
    type: number
    sql: ${TABLE}.fisc_week_of_yr_nbr ;;
  }

  dimension_group: fisc_wk_start_dt {
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
    sql: ${TABLE}.fisc_wk_start_dt ;;
  }

  dimension: fisc_yr_nbr {
    type: number
    sql: ${TABLE}.fisc_yr_nbr ;;
  }

  dimension_group: fisc_yr_start_dt {
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
    sql: ${TABLE}.fisc_yr_start_dt ;;
  }

  dimension: lst_day_of_fisc_mth_flg {
    type: number
    sql: ${TABLE}.lst_day_of_fisc_mth_flg ;;
  }

  dimension: lst_day_of_mth_flg {
    type: number
    sql: ${TABLE}.lst_day_of_mth_flg ;;
  }

  dimension: mth_des {
    type: string
    sql: ${TABLE}.mth_des ;;
  }

  dimension: mth_of_yr_nbr {
    type: number
    sql: ${TABLE}.mth_of_yr_nbr ;;
  }

  dimension_group: period_dt {
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
    sql: ${TABLE}.period_dt ;;
  }

  dimension: rec_clos_dt {
    type: string
    sql: ${TABLE}.rec_clos_dt ;;
  }

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

  dimension: rpt_bus_day_des {
    type: string
    sql: ${TABLE}.rpt_bus_day_des ;;
  }

  dimension_group: rpt_bus_dt {
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
    sql: ${TABLE}.rpt_bus_dt ;;
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

  dimension: week_of_mth_nbr {
    type: number
    sql: ${TABLE}.week_of_mth_nbr ;;
  }

  dimension: week_of_yr_nbr {
    type: number
    sql: ${TABLE}.week_of_yr_nbr ;;
  }

  dimension: weekday_flg {
    type: number
    sql: ${TABLE}.weekday_flg ;;
  }

  dimension: yr_id {
    type: number
    sql: ${TABLE}.yr_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
