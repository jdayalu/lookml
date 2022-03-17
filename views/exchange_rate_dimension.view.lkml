# The name of this view in Looker is "Exchange Rate Dimension"
view: exchange_rate_dimension {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `adhoc_data_march.exchange_rate_dimension`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bb Ccy Exch Sk" in Explore.

  dimension: bb_ccy_exch_sk {
    type: number
    sql: ${TABLE}.bb_ccy_exch_sk ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_bb_ccy_exch_sk {
    type: sum
    sql: ${bb_ccy_exch_sk} ;;
  }

  measure: average_bb_ccy_exch_sk {
    type: average
    sql: ${bb_ccy_exch_sk} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ccy_exch_valid_dt {
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
    sql: ${TABLE}.ccy_exch_valid_dt ;;
  }

  dimension: ccy_sk {
    type: number
    sql: ${TABLE}.ccy_sk ;;
  }

  dimension: from_ccy_cd {
    type: string
    sql: ${TABLE}.from_ccy_cd ;;
  }

  dimension: rate_amt {
    type: number
    sql: ${TABLE}.rate_amt ;;
  }

  dimension: rate_type_cd {
    type: string
    sql: ${TABLE}.rate_type_cd ;;
  }

  dimension_group: rec_clos_dt {
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

  dimension: to_ccy_cd {
    type: string
    sql: ${TABLE}.to_ccy_cd ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
