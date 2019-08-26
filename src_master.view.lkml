view: src_master {
  sql_table_name: dbo.SRC_MASTER ;;

  dimension: date_relative_to {
    type: string
    sql: ${TABLE}.DateRelativeTo ;;
  }

  dimension: descr {
    type: string
    sql: ${TABLE}.DESCR ;;
  }

  dimension: ditl {
    type: string
    sql: ${TABLE}.DITL ;;
  }

  dimension: ditlbreak_events {
    type: string
    sql: ${TABLE}.DITLBreakEvents ;;
  }

  dimension: ditlcat {
    type: string
    sql: ${TABLE}.DITLCat ;;
  }

  dimension: ditlsort {
    type: number
    sql: ${TABLE}.DITLSort ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: scmst_id {
    type: string
    sql: ${TABLE}.SCMST_ID ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  dimension: utcoffset {
    type: number
    sql: ${TABLE}.UTCOffset ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
