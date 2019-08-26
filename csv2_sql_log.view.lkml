view: csv2_sql_log {
  sql_table_name: dbo.CSV2SQL_Log ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: csvfile {
    type: string
    sql: ${TABLE}.CSVFile ;;
  }

  dimension: log_error_message {
    type: string
    sql: ${TABLE}.log_Error_Message ;;
  }

  dimension: log_error_trace {
    type: string
    sql: ${TABLE}.log_Error_Trace ;;
  }

  dimension: log_info {
    type: string
    sql: ${TABLE}.log_Info ;;
  }

  dimension: log_type {
    type: string
    sql: ${TABLE}.log_type ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
