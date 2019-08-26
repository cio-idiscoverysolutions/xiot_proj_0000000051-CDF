view: log {
  sql_table_name: dbo.LOG ;;

  dimension: log_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.LogID ;;
  }

  dimension: details {
    type: string
    sql: ${TABLE}.Details ;;
  }

  dimension: entry {
    type: string
    sql: ${TABLE}.Entry ;;
  }

  dimension_group: ldate {
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
    sql: ${TABLE}.LDate ;;
  }

  dimension: lstatus {
    type: string
    sql: ${TABLE}.LStatus ;;
  }

  dimension: ltype {
    type: string
    sql: ${TABLE}.LType ;;
  }

  measure: count {
    type: count
    drill_fields: [log_id]
  }
}
